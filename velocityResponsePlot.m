%%  Scale Y data to m/s instead of counts/ms
%   Only do this once.....
convConst = 1/2/1000 * 1000 / (4*512) / 5.6 * (pi*30.6);
data1(:,2:end) = data1(:,2:end) .* convConst;
data3(:,2:end) = data3(:,2:end) .* convConst;

%%  Scale X time data to s instead of ms
%   Only do this once.....
data1(:,1) = data1(:,1) .* (1/1000);
data3(:,1) = data3(:,1) .* (1/1000);

%%  Time adjust data
%   Has to be done individually
data1(:,1) = data1(:,1) - 2;
data3(:,1) = data3(:,1) - 4;


%% Plot 1 m/s & 3m/s
clf

figure(1)
hold on
    plot(data1(:,1), data1(:,4), '--k'); %targetSpeed
    plot(data1(:,1), data1(:,2), '-r');
    plot(data1(:,1), data1(:,3), '-b');
    
    axis([0 4 -0.2 1.1])
    title('1 m/s respons')
    ylabel('v [m/s]') 
    xlabel('t [s]')
    legend({'Önskad hastighet','Börvärde', 'Ärvärde'},'Location','northeast')
hold off

figure(2)
hold on
    plot(data3(:,1), data3(:,4), '--k'); %targetSpeed
    plot(data3(:,1), data3(:,2), '-r'); %currentSpeed
    plot(data3(:,1), data3(:,3), '-b'); %encoderFeedback
    
    axis([0 4.5 -0.2 3.1])
    title('3 m/s response')
    ylabel('v [m/s]') 
    xlabel('t [s]')
    legend({'Önskad hastighet','Börvärde', 'Ärvärde'},'Location','northeast')
hold off