`timescale 1ns / 1ps
module fft_tb;

    parameter N     = 64;
    parameter RE_W  = 16;
    parameter IM_W  = 16;
    parameter DATA_SIZE = 64;

    reg          clk;
    reg          rst_n;
    reg          data_in_valid;
    wire         data_out_valid;
    reg          mode;
    reg signed  [RE_W*N-1:0]     data_in_re;
    reg signed  [IM_W*N-1:0]     data_in_im;
    wire signed [RE_W*N-1:0]     data_out_re;
    wire signed [IM_W*N-1:0]     data_out_im;
    reg         [5:0]            data_addr;
    reg                          data_ready;
    reg signed  [RE_W-1:0]       data_input_re [0:DATA_SIZE];
    reg signed  [IM_W-1:0]       data_input_im [0:DATA_SIZE];

//=========== clock and reset ===========//
    always #5 clk <= ~clk;

    initial 
    begin
     clk = 0;
     rst_n = 0;
     #100;
     rst_n = 1;
     mode = 0;
     $readmemh("input_re.txt",data_input_re);
     $readmemh("input_im.txt",data_input_im);
     #100000;
     clk = 0;
     rst_n = 0;
     #100;
     rst_n = 1;
     mode = 1;  
    end

//============ Input Interface ===========//

    always @(posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        data_in_valid <= 0;
      else if(data_ready)
        data_in_valid <= 1;
      else 
        data_in_valid <= 0;
    end

    always @(posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        data_ready <= 0;
      else if(data_addr == 6'b111111)
        data_ready <= 1;
      else 
        data_ready <= data_ready;
    end

    always @(posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        data_addr <= 0;
      else if(!data_ready)
        data_addr <= data_addr + 1;
      else 
        data_addr <= data_addr;
    end

    always @(posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        data_in_re <= 0;
      else if(!data_ready)
        data_in_re[data_addr*RE_W +: RE_W] <= data_input_re[data_addr];
      else 
        data_in_re <= data_in_re;
    end

    always @(posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        data_in_im <= 0;
      else if(!data_ready)
        data_in_im[data_addr*IM_W +: IM_W] <= data_input_im[data_addr];
      else 
        data_in_im <= data_in_im;
    end

    fft_ifft_top dut
    (
      .clk(clk),
      .rst_n(rst_n),
      .mode(mode),
      .data_in_re(data_in_re),
      .data_in_im(data_in_im),
      .data_in_valid(data_in_valid),
      .data_out_re(data_out_re),
      .data_out_im(data_out_im),
      .data_out_valid(data_out_valid)
    ); 

//=========== Output Interface ==============//
    integer fft_output_re,fft_output_im,ifft_output_re,ifft_output_im,i;

    initial 
    begin
      fft_output_re = $fopen("fft_output_re.txt","w");
      fft_output_im = $fopen("fft_output_im.txt","w");
      ifft_output_re = $fopen("ifft_output_re.txt","w");
      ifft_output_im = $fopen("ifft_output_im.txt","w");

      i = 0;
    end
    
    always @(posedge clk)
    begin
      if(data_out_valid && !mode)
      begin
        if(i < 64)
        begin
        $fwrite(fft_output_re,"%h\n",data_out_re[i*16 +: 16]);
        $fwrite(fft_output_im,"%h\n",data_out_im[i*16 +: 16]);
        i = i + 1;
        end
      end
      else if(data_out_valid && mode && i != 0)
      begin
        if(i <= 64 && i > 0)
        begin
        i = i - 1;
        $fwrite(ifft_output_re,"%h\n",data_out_re[(63-i)*16 +: 16]);
        $fwrite(ifft_output_im,"%h\n",data_out_im[(63-i)*16 +: 16]);
        end
      end
      else if(i == 0 && data_out_valid)
      begin
        #100;
        $display("/n##### Done ####/n"); 
        $stop();
      end
    end   

endmodule


