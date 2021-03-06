filename = 'IMU_simulation_data.xlsx';
time = xlsread(filename, 'A2:A14952');
MagX = xlsread(filename, 'B2:B14952');
MagY = xlsread(filename, 'C2:C14952');
MagZ = xlsread(filename, 'D2:D14952');
AccX = xlsread(filename, 'E2:E14952');
AccY = xlsread(filename, 'F2:F14952');
AccZ = xlsread(filename, 'G2:G14952');
GyroX = xlsread(filename, 'H2:H14952');
GyroY = xlsread(filename, 'I2:I14952');
GyroZ= xlsread(filename, 'J2:J14952');

figure()
plot(time, GyroZ)
title('time domain representation of the GyroZ data')
xlabel('time[s]');
ylabel('GyroZ');
figure()
histogram(GyroZ)
title('Histogram time domain representation of the GyroZ data');
ylabel('GyroZ');
Y = fft(GyroZ);
Fs = 1000;
Ts = 1/Fs;
f = (0:length(Y)-1)*Fs/length(Y);
m = abs(Y);

figure()
histogram(m)
title('Histogram frequency domain representation of the GyroZ data')
ylabel('GyroZ');

figure()
histogram(m)
title('frequency domain representation of the GyroZ data')
xlabel('frequancy[Hz]');
ylabel('GyroZ');

