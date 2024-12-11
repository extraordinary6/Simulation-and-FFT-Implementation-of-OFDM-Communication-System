% removecp.m
% Remove cycle pre

function [iout,qout]=removecp(idata,qdata,len,gilen)

%****************** variables *************************
% idata : input Ich data
% qdata : input Qch data
% iout   output Ich data
% qout   output Qch data
% fftlen : fft length
% gilen :cp length
%******************************************************
iout = idata(gilen+1:len,:);
qout = qdata(gilen+1:len,:);

% ************************end of file***********************************