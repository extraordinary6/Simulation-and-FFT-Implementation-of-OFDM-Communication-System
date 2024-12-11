% ofdmmap.m

function [iout,qout]=ofdmmap(idata,qdata,fftlen,nd)

%****************** variables *************************
% idata : input Ich data
% qdata : input Qch data
% iout   output Ich data
% qout   output Qch data
% fftlen : fft length
% nd : number of information OFDM symbol for one loop
%******************************************************
null_wave = zeros(fftlen-48,nd);

iout = [null_wave(1,:);idata(25:30,:);null_wave(2,:);idata(31:43,:);null_wave(3,:);idata(44:48,:);null_wave(4:14,:);idata(1:5,:);null_wave(15,:);idata(6:18,:);null_wave(16,:);idata(19:24,:)];
qout = [null_wave(1,:);qdata(25:30,:);null_wave(2,:);qdata(31:43,:);null_wave(3,:);qdata(44:48,:);null_wave(4:14,:);qdata(1:5,:);null_wave(15,:);qdata(6:18,:);null_wave(16,:);qdata(19:24,:)];

% ************************end of file***********************************