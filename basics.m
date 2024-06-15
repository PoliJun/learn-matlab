clc,
clearvars

x=linspace(0,10,10000);
y=sin(x);

% plot(x,y,'.'); hold on; plot([0 10],[0.8 0.8],'-r');

y_greater=y>0.8;
FinalPercent=sum(y_greater)/length(y);
FinalPercent;



