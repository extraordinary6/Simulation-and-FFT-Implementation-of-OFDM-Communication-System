% ofdmmap.m

function [iout,qout]=ofdmdemap(idata,qdata)

%****************** variables *************************
% idata : input Ich data
% qdata : input Qch data
% iout   output Ich data
% qout   output Qch data
%******************************************************

iout = [idata(39:43,:);idata(45:57,:);idata(59:64,:);idata(2:7,:);idata(9:21,:);idata(23:27,:)];
qout = [qdata(39:43,:);qdata(45:57,:);qdata(59:64,:);qdata(2:7,:);qdata(9:21,:);qdata(23:27,:)];

% ************************end of file***********************************