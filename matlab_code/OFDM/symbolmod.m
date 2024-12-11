
% bpskmod.m
% Function to perform BPSK modulation

function [iout,qout]=symbolmod(paradata,para,nd,ml)

%****************** variables *************************
% paradata : input data (para-by-nd matrix)
% iout :output Ich data
% qout :output Qch data
% para   : Number of paralell channels
% nd : Number of data
% ml : Number of modulation levels
% (QPSK ->2  16QAM -> 4)
% *****************************************************



if(ml == 1)
    [iout,qout] = bpskmod(paradata,para,nd,ml);
end
if(ml == 2)
    [iout,qout] = qpskmod(paradata,para,nd,ml);
end
if(ml == 4)
    [iout,qout] = qam16mod(paradata,para,nd,ml);
end
if(ml == 6)
    [iout,qout] = qam64mod(paradata,para,nd,ml);
end

	
	

%******************** end of file ***************************
