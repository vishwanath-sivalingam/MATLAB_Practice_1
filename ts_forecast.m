function fc = ts_forecast(month2predict)
% To run: fc =ts_forecast(6*3+2)

Y=[0.0400 0.0733 0.1000 0.1200 0.1160 0.1060, 0.1140 0.0880 0.1200 0.1380 0.1340 0.1260,0.1360 0.0920 0.1240 0.1440 0.1733 0.1500];

year=1:3;
bimonth=1:length(Y); % bi-month number

T_coeff=polyfit(bimonth,Y,1); % linear fit
T=polyval(T_coeff,bimonth); % trend
SR=Y-T; % detrend - seasonality

S= mean (reshape(SR, 6,length(year))'); % 6 months, each of 3 year
R=Y-T-repmat(S,1,length(year)); % random component
fc =polyval(T_coeff,month2predict)+S(2); % prediction

%================plot===================
subplot(3,1,1)
plot(bimonth,Y,'o',bimonth,T,'-'),grid
ylabel('Concentration'),title('Fit')

subplot(3,1,2)
plot(bimonth,SR),grid
ylabel('Y-T'),title('Detrend')
subplot(3,1,3)

plot(bimonth,R),grid
xlabel('bi-months'),title ('Random')