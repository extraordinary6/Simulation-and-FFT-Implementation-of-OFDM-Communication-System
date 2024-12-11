
% bpskdemod.m
% Function to perform BPSK demodulation

function [demodata]=qam16demod(idata,qdata,para,nd,ml)

%****************** variables *************************
% idata :input Ich data
% qdata :input Qch data
% demodata: demodulated data (para-by-nd matrix)
% para   : Number of paralell channels
% nd : Number of data
% ml : Number of modulation levels
% (QPSK ->2  16QAM -> 4)
% *****************************************************

demodata = zeros(para,ml*nd);
counter = 0;
counter6 = 0;
for jj=1:nd

demodata((1:para),1+counter6 )=idata((1:para),1+counter )>=0;
demodata((1:para),2+counter6 )=(abs(idata((1:para),1+counter)-14) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)+2),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+14)]))|(abs(idata((1:para),1+counter)-10) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)+2),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-14),abs(idata((1:para),1+counter)+14)]))|(abs(idata((1:para),1+counter)+2) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)-14),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+14)]))|(abs(idata((1:para),1+counter)+6) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)+2),abs(idata((1:para),1+counter)-14),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+14)]));
demodata((1:para),3+counter6 )=(abs(idata((1:para),1+counter)-14) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)+2),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+14)]))|(abs(idata((1:para),1+counter)-6) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)+2),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-14),abs(idata((1:para),1+counter)+14)]))|(abs(idata((1:para),1+counter)+2) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)-14),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+10),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+14)]))|(abs(idata((1:para),1+counter)+10) < min([abs(idata((1:para),1+counter)-2),abs(idata((1:para),1+counter)+2),abs(idata((1:para),1+counter)-14),abs(idata((1:para),1+counter)-6),abs(idata((1:para),1+counter)+6),abs(idata((1:para),1+counter)-10),abs(idata((1:para),1+counter)+14)]));
demodata((1:para),4+counter6 )=qdata((1:para),1+counter)>=0;
demodata((1:para),5+counter6 )=(abs(qdata((1:para),1+counter)-14) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)+2),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+14)]))|(abs(qdata((1:para),1+counter)-10) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)+2),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-14),abs(qdata((1:para),1+counter)+14)]))|(abs(qdata((1:para),1+counter)+2) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)-14),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+14)]))|(abs(qdata((1:para),1+counter)+6) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)+2),abs(qdata((1:para),1+counter)-14),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+14)]));
demodata((1:para),6+counter6 )=(abs(qdata((1:para),1+counter)-14) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)+2),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+14)]))|(abs(qdata((1:para),1+counter)-6) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)+2),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-14),abs(qdata((1:para),1+counter)+14)]))|(abs(qdata((1:para),1+counter)+2) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)-14),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+10),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+14)]))|(abs(qdata((1:para),1+counter)+10) < min([abs(qdata((1:para),1+counter)-2),abs(qdata((1:para),1+counter)+2),abs(qdata((1:para),1+counter)-14),abs(qdata((1:para),1+counter)-6),abs(qdata((1:para),1+counter)+6),abs(qdata((1:para),1+counter)-10),abs(qdata((1:para),1+counter)+14)]));

counter6 = counter6 + ml;
counter = counter + 1;

end
%******************** end of file ***************************
