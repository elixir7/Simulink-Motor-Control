%Run after running the simulation in "Motor_Model_leadlag"
subplot(2,1,1)
plot(tout,ulag);
xlabel('time (seconds)')
ylabel('control effort (volts)')
title('Control Effort Under Lag Compensation')
subplot(2,1,2)
plot(tout,ulead);
xlabel('time (seconds)')
ylabel('control effort (volts)')
title('Control Effort Under Lead Compensation')