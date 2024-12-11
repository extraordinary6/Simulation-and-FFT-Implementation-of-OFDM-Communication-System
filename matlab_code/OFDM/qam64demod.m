
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
    for ii=1:para
    demodata(ii,1+counter6 )=idata(ii,1+counter )>=0;
    demodata(ii,2+counter6 )=(abs(idata(ii,1+counter)-14) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)+2),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+14)]))|(abs(idata((ii),1+counter)-10) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)+2),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-14),abs(idata((ii),1+counter)+14)]))|(abs(idata((ii),1+counter)+2) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)-14),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+14)]))|(abs(idata((ii),1+counter)+6) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)+2),abs(idata((ii),1+counter)-14),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+14)]));
    demodata(ii,3+counter6 )=(abs(idata(ii,1+counter)-14) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)+2),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+14)]))|(abs(idata((ii),1+counter)-6) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)+2),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-14),abs(idata((ii),1+counter)+14)]))|(abs(idata((ii),1+counter)+2) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)-14),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+10),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+14)]))|(abs(idata((ii),1+counter)+10) < min([abs(idata((ii),1+counter)-2),abs(idata((ii),1+counter)+2),abs(idata((ii),1+counter)-14),abs(idata((ii),1+counter)-6),abs(idata((ii),1+counter)+6),abs(idata((ii),1+counter)-10),abs(idata((ii),1+counter)+14)]));
    demodata(ii,4+counter6 )=qdata((ii),1+counter)>=0;
    demodata(ii,5+counter6 )=(abs(qdata((ii),1+counter)-14) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)+2),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+14)]))|(abs(qdata((ii),1+counter)-10) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)+2),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-14),abs(qdata((ii),1+counter)+14)]))|(abs(qdata((ii),1+counter)+2) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)-14),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+14)]))|(abs(qdata((ii),1+counter)+6) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)+2),abs(qdata((ii),1+counter)-14),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+14)]));
    demodata(ii,6+counter6 )=(abs(qdata((ii),1+counter)-14) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)+2),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+14)]))|(abs(qdata((ii),1+counter)-6) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)+2),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-14),abs(qdata((ii),1+counter)+14)]))|(abs(qdata((ii),1+counter)+2) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)-14),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+10),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+14)]))|(abs(qdata((ii),1+counter)+10) < min([abs(qdata((ii),1+counter)-2),abs(qdata((ii),1+counter)+2),abs(qdata((ii),1+counter)-14),abs(qdata((ii),1+counter)-6),abs(qdata((ii),1+counter)+6),abs(qdata((ii),1+counter)-10),abs(qdata((ii),1+counter)+14)]));
    end
    counter6 = counter6 + ml;
    counter = counter + 1;

end
%******************** end of file ***************************
