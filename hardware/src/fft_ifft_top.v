module fft_ifft_top
#(
    parameter N     = 64,
    parameter RE_W  = 16,   // real part data width
    parameter IM_W  = 16    // imaginary part data width
)
(
    input wire                    clk,
    input wire                    rst_n,
    input wire		          	  mode,  			  // input select fft/ifft mode, 0-fft, 1-ifft

    input wire signed[RE_W*N-1:0] data_in_re,       // input data's real part, the number of input datas is 64
    input wire signed[IM_W*N-1:0] data_in_im,       // input data's imaginary part
    input wire                    data_in_valid,    // input data valid signal
    
    output reg signed[RE_W*N-1:0] data_out_re,      // output data's real part, the number of output datas is 64
    output reg signed[IM_W*N-1:0] data_out_im,      // output data's imaginary part
    output reg                    data_out_valid    // output data valid signal
);

reg [5:0] cyc_cnt;//level-in
reg [3:0] lev_cnt;//between level

reg [4:0] tw_num;
wire signed [6:0] buffer_id1;
wire signed [6:0] buffer_id2;
reg  signed [6:0] buffer_id1_p [2:0];//buffer_id1 pipline 
reg  signed [6:0] buffer_id2_p [2:0];//buffer_id2 pipline

reg signed[117:0] re1;
reg signed[117:0] re2;
reg signed[117:0] im1;
reg signed[117:0] im2;
reg signed[15:0] twiddle_re;//Wnr
reg signed[15:0] twiddle_im;//Wnr

reg signed[117:0] re1_p;//re1 pipeline
reg signed[117:0] im1_p;//im1 pipeline
reg signed[117:0] mut1;//re2 * twiddle_re
reg signed[117:0] mut2;//re2 * twiddle_im
reg signed[117:0] mut3;//im2 * twiddle_im
reg signed[117:0] mut4;//im2 * twiddle_re


reg signed[117:0] re1_o;//adder-register
reg signed[117:0] re2_o;
reg signed[117:0] im1_o;
reg signed[117:0] im2_o;

reg signed[118*N-1:0] buffer_re;
reg signed[118*N-1:0] buffer_im;

reg [5:0] i;//use for loop data_out
reg [5:0] j;//use for loop buffer
wire [5:0] i_rev;

wire [15:0] lut [0:17];//look-up-table for the Wnr

wire signed [117:0] temp;//data_out_im <- buffer_im, take conjugation
wire signed [117:0] temp2;//buffer_im <- data_in_im, extension of symbol bits
/* combination logic is as follows: */
assign i_rev = {i[0], i[1], i[2], i[3], i[4], i[5]};//reverse
assign temp = ~buffer_im[i_rev*118+:118] + 1;//use for storing reverse buffer_im
assign temp2= {{103{data_in_im[j*IM_W+15]}}, data_in_im[j*IM_W+:15]};
assign buffer_id1 = ( (cyc_cnt-1) % (1<<(5-lev_cnt)) )+ ( (cyc_cnt-1) >> (5-lev_cnt) ) * ((1<<(6-lev_cnt)) );
assign buffer_id2 = ( (cyc_cnt-1) % (1<<(5-lev_cnt)) )+ ( (cyc_cnt-1) >> (5-lev_cnt) ) * ((1<<(6-lev_cnt)) ) + (1<<(5-lev_cnt));

//cos 0~0.5pi : below
assign lut[0] = 1 * 256;
assign lut[1] = 0.9951847267 * 256;
assign lut[2] = 0.9807852804 * 256;
assign lut[3] = 0.9569403357 * 256;
assign lut[4] = 0.9238795325 * 256;
assign lut[5] = 0.8819212643 * 256;
assign lut[6] = 0.8314696123 * 256;
assign lut[7] = 0.7730104534 * 256;
assign lut[8] = 0.7071067812 * 256;
assign lut[9] = 0.6343932842 * 256;
assign lut[10] = 0.555570233 * 256;
assign lut[11] = 0.4713967368 * 256;
assign lut[12] = 0.3826834324 * 256;
assign lut[13] = 0.2902846773 * 256;
assign lut[14] = 0.195090322 * 256;
assign lut[15] = 0.09801714033 * 256;
assign lut[16] = 0;
//re: 0 <= x <= 16  lut[x]
//re: 17<= x <= 31  -lut[32-x]
//im: 0 <= x <= 16  -lut[16-x]
//im: 17<= x <= 31  -lut[x-16]

//counter set
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) cyc_cnt <= 0;
	else if(cyc_cnt == 32) cyc_cnt <= 1;
    else if((data_in_valid && j == 63) || (cyc_cnt > 0 && lev_cnt <= 7)) cyc_cnt <= cyc_cnt + 1;
    else cyc_cnt <= cyc_cnt;
end


always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) lev_cnt <= 0;
	else if(cyc_cnt == 32) lev_cnt <= lev_cnt + 1;
	else lev_cnt <= lev_cnt;
end

always @(*)
begin
    if(!rst_n) tw_num = 0;
    else if(lev_cnt == 5)
        tw_num = ((cyc_cnt - 1) >> 4) + (cyc_cnt - 1)%16*2;
    else if(lev_cnt >=0 || lev_cnt <=4)
        tw_num = (cyc_cnt - 1) >> (5-lev_cnt)  << (5-lev_cnt);
    else
        tw_num = 0;
end

//twiddle factor
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) twiddle_re <= 0;
    else if(lev_cnt == 5)
	begin
        if(tw_num <= 16 && 0 <= tw_num)
		    twiddle_re <= lut[tw_num];
	    else if(tw_num <= 31 && 17 <= tw_num)
		    twiddle_re <= -lut[32 - tw_num];
        else
            twiddle_re <= 0; 
	end 
	else if(tw_num <= 16 && 0 <= tw_num)
		twiddle_re <= lut[tw_num];
	else if(tw_num <= 31 && 17 <= tw_num)
		twiddle_re <= -lut[32 - tw_num];
	else 
		twiddle_re <= 0;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) twiddle_im <= 0;
    else if(lev_cnt == 5)
	begin
        if(tw_num <= 16 && 0 <= tw_num)
		    twiddle_im <= -lut[16 - tw_num];
	    else if(tw_num <= 31 && 17 <= tw_num)
		    twiddle_im <= -lut[tw_num - 16];
        else
            twiddle_im <= 0; 
	end 
	else if(tw_num <= 16 && 0 <= tw_num)
		twiddle_im <= -lut[16 - tw_num];
	else if(tw_num <= 31 && 17 <= tw_num)
		twiddle_im <= -lut[tw_num - 16];
	else 
		twiddle_im <= 0;
end

//buffer_id pipeline
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) begin
		buffer_id1_p[0] <= 0;
		buffer_id1_p[1] <= 0;
		buffer_id1_p[2] <= 0;	
	end
	else if((lev_cnt >= 0 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 2)) begin
		buffer_id1_p[0] <= buffer_id1;
		buffer_id1_p[1] <= buffer_id1_p[0];
		buffer_id1_p[2] <= buffer_id1_p[1];
	end
	else begin
		buffer_id1_p[0] <= buffer_id1_p[0];
		buffer_id1_p[1] <= buffer_id1_p[1];
		buffer_id1_p[2] <= buffer_id1_p[2];	
	end
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) begin
		buffer_id2_p[0] <= 0;
		buffer_id2_p[1] <= 0;
		buffer_id2_p[2] <= 0;	
	end
	else if((lev_cnt >= 0 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 2)) begin
		buffer_id2_p[0] <= buffer_id2;
		buffer_id2_p[1] <= buffer_id2_p[0];
		buffer_id2_p[2] <= buffer_id2_p[1];
	end
	else begin
		buffer_id2_p[0] <= buffer_id2_p[0];
		buffer_id2_p[1] <= buffer_id2_p[1];
		buffer_id2_p[2] <= buffer_id2_p[2];	
	end
end

//fetch data from buffer
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) re1 <= 0;
	else if(lev_cnt >= 0 && lev_cnt <= 5 && cyc_cnt > 0) 
		re1 <= buffer_re[ buffer_id1*118+:118];	
	else re1 <= re1;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) im1 <= 0;
	else if(lev_cnt >= 0 && lev_cnt <= 5 && cyc_cnt > 0) 
		im1 <= buffer_im[ buffer_id1*118+:118];
	else im1 <= im1;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) re2 <= 0;
	else if(lev_cnt >= 0 && lev_cnt <= 5 && cyc_cnt > 0) 
		re2 <= buffer_re[ buffer_id2*118+:118];
	else re2 <= re2;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) im2 <= 0;
	else if(lev_cnt >= 0 && lev_cnt <= 5 && cyc_cnt > 0) 
		im2 <= buffer_im[ buffer_id2*118+:118];
	else im2 <= im2;
end


//re1 & im1 pipeline
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) re1_p <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 2) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt == 1))
		re1_p <= re1 * 256;
	else re1_p <= re1_p;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) im1_p <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 2) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt == 1))
		im1_p <= im1 * 256;
	else im1_p <= im1_p;
end

//multiply
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) mut1 <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 2) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt == 1))
		mut1 <= re2 * twiddle_re;
	else mut1 <= mut1;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) mut2 <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 2) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt == 1))
		mut2 <= re2 * twiddle_im;
	else mut2 <= mut2;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) mut3 <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 2) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt == 1))
		mut3 <= im2 * twiddle_im;
	else mut3 <= mut3;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) mut4 <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 2) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt == 1))
		mut4 <= im2 * twiddle_re;
	else mut4 <= mut4;
end
//adder sum
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) re1_o <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 3) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 2))
		re1_o <= re1_p + mut1 - mut3;
	else re1_o <= re1_o;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) im1_o <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 3) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 2))
		im1_o <= im1_p + mut2 + mut4;
	else im1_o <= im1_o;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) re2_o <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 3) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 2))
		re2_o <= re1_p - mut1 + mut3; 
	else re2_o <= re2_o;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) im2_o <= 0;
	else if((lev_cnt == 0 && cyc_cnt >= 3) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 2))
		im2_o <= im1_p - mut2 - mut4;
	else im2_o <= im2_o;
end

//index for buffer prepare
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) j <= 0;
	else if(j == 63) j <= 0;
	else if(data_in_valid && cyc_cnt == 0) j <= j + 1;
	else j <= j;
end

//store data into buffer
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) begin
		buffer_re <= 0;
	end
	else if(data_in_valid && cyc_cnt == 0) begin
		buffer_re[j*118+:15] <= data_in_re[j*RE_W+:15];
		buffer_re[j*118+117] <= data_in_re[j*RE_W+15];
		if(data_in_re[j*RE_W+15])
			buffer_re[j*118+15 +: 102] <= 102'h3f_ffff_ffff_ffff_ffff_ffff_ffff;
		else
			buffer_re[j*118+15 +: 102] <= 0;
	end
	else if((lev_cnt == 0 && cyc_cnt >= 4) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 3))
	begin
		buffer_re[buffer_id1_p[2]*118 +: 118] <= re1_o;
		buffer_re[buffer_id2_p[2]*118 +: 118] <= re2_o;
	end
	else begin
		buffer_re <= buffer_re;
	end
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) begin
		buffer_im <= 0;
	end
	else if(data_in_valid && cyc_cnt == 0 && !mode) begin
		buffer_im[j*118+:15] <= data_in_im[j*IM_W+:15];
		buffer_im[j*118+117] <= data_in_im[j*IM_W+15];
		if(data_in_im[j*IM_W+15])
			buffer_im[j*118+15 +: 102] <= 102'h3f_ffff_ffff_ffff_ffff_ffff_ffff;
		else
			buffer_im[j*118+15 +: 102] <= 0;
	end
	else if(data_in_valid && cyc_cnt == 0 && mode) begin//take conjugation
		buffer_im[j*118+:118] <= ~temp2 + 1;
	end
	else if((lev_cnt == 0 && cyc_cnt >= 4) || (lev_cnt >= 1 && lev_cnt <= 5 && cyc_cnt > 0) || (lev_cnt == 6 && cyc_cnt <= 3))
	begin
		buffer_im[buffer_id1_p[2]*118 +: 118] <= im1_o;
		buffer_im[buffer_id2_p[2]*118 +: 118] <= im2_o;
	end
	else begin
		buffer_im <= buffer_im;
	end
end


//index for data_out
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) i <= 0;
	else if(i == 63) i <= 0;
	else if((lev_cnt == 6 && cyc_cnt >= 4) || (lev_cnt == 7 && cyc_cnt > 0) || (lev_cnt == 8 && cyc_cnt <= 3)) 
		i <= i + 1;
	else i <= i;
end

//output 
always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) data_out_re <= 0;
	else if((lev_cnt == 6 && cyc_cnt >= 4) || (lev_cnt == 7 && cyc_cnt > 0) || (lev_cnt == 8 && cyc_cnt <= 3))//finished
	begin
		if(!mode) begin//fft
			if(buffer_re[i_rev*118 + 117] == 1) begin//negative
				if(buffer_re[i_rev*118+116 -: 48]==48'hffff_ffff_ffff)//not saturated
				begin
					data_out_re[(i+1)*RE_W-1] <= 1;
					if(buffer_re[i_rev*118+53] == 0) 
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15];
					else
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15]+1;
				end
				else//saturated
					data_out_re[i*RE_W +: 16] <= 16'b1000_0000_0000_0000;
			end
			else begin//postive
				if(buffer_re[i_rev*118+116 -: 48]==0)//not saturated
				begin
					data_out_re[(i+1)*RE_W-1] <= 0;
					if(buffer_re[i_rev*118+53] == 0) 
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15];
					else
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15]+1;
				end
				else//saturated
					data_out_re[i*RE_W +: 16] <= 16'b0111_1111_1111_1111;
			end
		end
		else begin//ifft
			if(buffer_re[i_rev*118 + 117] == 1) begin//negative
				if(buffer_re[i_rev*118+116 -: 48]==48'hffff_ffff_ffff)//not saturated
				begin
					data_out_re[(i+1)*RE_W-1] <= 1;
					if(buffer_re[i_rev*118+53] == 0) 
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15];
					else
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15]+1;
				end
				else//saturated
					data_out_re[i*RE_W +: 16] <= 16'b1000_0000_0000_0000;
			end
			else begin//postive
				if(buffer_re[i_rev*118+116 -: 48]==0)//not saturated
				begin
					data_out_re[(i+1)*RE_W-1] <= 0;
					if(buffer_re[i_rev*118+53] == 0) 
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15];
					else
						data_out_re[i*RE_W +: 15] <= buffer_re[(i_rev*118+54) +: 15]+1;
				end
				else//saturated
					data_out_re[i*RE_W +: 16] <= 16'b0111_1111_1111_1111;
			end
		end
	end
	else data_out_re <= data_out_re;
end

always @(posedge clk or negedge rst_n)
begin 
	if(!rst_n) data_out_im <= 0;
	else if((lev_cnt == 6 && cyc_cnt >= 4) || (lev_cnt == 7 && cyc_cnt > 0) || (lev_cnt == 8 && cyc_cnt <= 3))//finished
	begin
		if(!mode) begin//fft
			if(buffer_im[i_rev*118+117] == 1) begin//negative
				if(buffer_im[i_rev*118+116 -: 48]==48'hffff_ffff_ffff)//not saturated
				begin
					data_out_im[(i+1)*IM_W-1] <= 1;
					if(buffer_im[i_rev*118+53] == 0) 
						data_out_im[i*IM_W +: 15] <= buffer_im[i_rev*118+54 +: 15];
					else
						data_out_im[i*IM_W +: 15] <= buffer_im[i_rev*118+54 +: 15]+1;
				end
				else//saturated
					data_out_im[i*IM_W +: 16] <= 16'b1000_0000_0000_0000;
			end
			else begin//postive
				if(buffer_im[i_rev*118+116 -: 48]==0)//not saturated
				begin
					data_out_im[(i+1)*IM_W-1] <= 0;
					if(buffer_im[i_rev*118+53] == 0) 
						data_out_im[i*IM_W +: 15] <= buffer_im[i_rev*118+54 +: 15];
					else
						data_out_im[i*IM_W +: 15] <= buffer_im[i_rev*118+54 +: 15]+1;
				end
				else//saturated
					data_out_im[i*IM_W +: 16] <= 16'b0111_1111_1111_1111;
			end
		end
		else begin//ifft
			if(temp[117] == 1) begin//negative
				if(temp[116:69]==48'hffff_ffff_ffff)//not saturated
				begin
					data_out_im[(i+1)*IM_W-1] <= 1;
					if(temp[53] == 0) 
						data_out_im[i*IM_W +: 15] <= temp[68:54];
					else
						data_out_im[i*IM_W +: 15] <= temp[68:54] + 1;
				end
				else//saturated
					data_out_im[i*IM_W +: 16] <= 16'b1000_0000_0000_0000;
			end
			else  begin//postive
				if(temp[116:69]==0)//not saturated
				begin
					data_out_im[(i+1)*IM_W-1] <= 0;
					if(temp[53] == 0) 
						data_out_im[i*IM_W +: 15] <= temp[68:54];
					else
						data_out_im[i*IM_W +: 15] <= temp[68:54] + 1;
				end
				else//saturated
					data_out_im[i*IM_W +: 16] <= 16'b0111_1111_1111_1111;
			end
		end
	end
	else data_out_im <= data_out_im;
end

always @(posedge clk or negedge rst_n)
begin
	if(!rst_n) data_out_valid <= 0;
	else if(i == 63) data_out_valid <= 1;
	else data_out_valid <= data_out_valid;
end
endmodule


