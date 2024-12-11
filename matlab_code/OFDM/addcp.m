% addcp.m
% Add cycle pre

function [iout,qout]=addcp(idata,qdata,fftlen,gilen)

%****************** variables *************************
% idata : input Ich data
% qdata : input Qch data
% iout   output Ich data
% qout   output Qch data
% fftlen : fft length
% gilen :cp length
%******************************************************
iout = [idata(fftlen-gilen+1:fftlen,:);idata(1:fftlen,:)];
qout = [qdata(fftlen-gilen+1:fftlen,:);qdata(1:fftlen,:)];

% ************************end of file***********************************