
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
counter4 = 0;
for jj=1:nd
%demodata((1:para),(1:ml:ml*nd))=idata((1:para),(1:nd))>=0;
%demodata((1:para),(2:ml:ml*nd))=(abs(idata((1:para),(1:nd))-3) < min([abs(idata((1:para),(1:nd))-1),abs(idata((1:para),(1:nd))+1),abs(idata((1:para),(1:nd))+3)]))|(abs(idata((1:para),(1:nd))+1) < min([abs(idata((1:para),(1:nd))+3),abs(idata((1:para),(1:nd))-1),abs(idata((1:para),(1:nd))-3)]));
%demodata((1:para),(3:ml:ml*nd))=qdata((1:para),(1:nd))>=0;
%demodata((1:para),(4:ml:ml*nd))=(abs(qdata((1:para),(1:nd))-3) < min([abs(qdata((1:para),(1:nd))-1),abs(qdata((1:para),(1:nd))+1),abs(qdata((1:para),(1:nd))+3)]))|(abs(qdata((1:para),(1:nd))+1) < min([abs(qdata((1:para),(1:nd))+3),abs(qdata((1:para),(1:nd))-1),abs(qdata((1:para),(1:nd))-3)]));

demodata((1:para),1+counter4 )=idata((1:para),1+counter )>=0;
demodata((1:para),2+counter4 )=(abs(idata((1:para),1+counter)-3) < min([abs(idata((1:para),1+counter)-1),abs(idata((1:para),1+counter)+1),abs(idata((1:para),1+counter)+3)]))|(abs(idata((1:para),1+counter)+1) < min([abs(idata((1:para),1+counter)+3),abs(idata((1:para),1+counter)-1),abs(idata((1:para),1+counter)-3)]));
demodata((1:para),3+counter4 )=qdata((1:para),1+counter)>=0;
demodata((1:para),4+counter4 )=(abs(qdata((1:para),1+counter)-3) < min([abs(qdata((1:para),1+counter)-1),abs(qdata((1:para),1+counter)+1),abs(qdata((1:para),1+counter)+3)]))|(abs(qdata((1:para),1+counter)+1) < min([abs(qdata((1:para),1+counter)+3),abs(qdata((1:para),1+counter)-1),abs(qdata((1:para),1+counter)-3)]));

counter4 = counter4 + ml;
counter = counter + 1;

end
%******************** end of file ***************************
