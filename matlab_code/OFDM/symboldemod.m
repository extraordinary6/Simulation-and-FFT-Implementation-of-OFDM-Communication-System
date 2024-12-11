
% bpskdemod.m
% Function to perform BPSK demodulation

function [demodata]=symboldemod(idata,qdata,para,nd,ml)

%****************** variables *************************
% idata :input Ich data
% qdata :input Qch data
% demodata: demodulated data (para-by-nd matrix)
% para   : Number of paralell channels
% nd : Number of data
% ml : Number of modulation levels
% (QPSK ->2  16QAM -> 4)
% *****************************************************

if(ml == 1)
    [demodata]=bpskdemod(idata,qdata,para,nd,ml);
end
if(ml == 2)
    [demodata]=qpskdemod(idata,qdata,para,nd,ml);
end
if(ml == 4)
    [demodata]=qam16demod(idata,qdata,para,nd,ml);
end
if(ml == 6)
    [demodata]=qam64demod(idata,qdata,para,nd,ml);
end

%******************** end of file ***************************
