%% Exc) 1-1
close all;
clear;
clc;

t_start = -1;
t_end = 1;
fs = 50;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '1-1 Main Function');
x1 = cos(2*pi*5*t);
plot(t, x1);
title('cos(2*pi*5*t)', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');



figure('Name', '1-1 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x1f = fft(x1);
plot(freq1, abs(x1f)/max(abs(x1f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');


subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x1f_shift= fftshift(x1f);
plot(freq2, abs(x1f_shift)/max(abs(x1f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
%% Exc) 1-2
close all;
clear;
clc;

t_start = -1;
t_end = 1;
fs = 50;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '1-2 Main Function');
x2 = rectpuls(t);
plot(t, x2);
title('rectpuls(t)', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');
ylim([-1 2]);



figure('Name', '1-2 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x2f = fft(x2);
plot(freq1, abs(x2f)/max(abs(x2f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');


subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x2f_shift= fftshift(x2f);
plot(freq2, abs(x2f_shift)/max(abs(x2f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
%% Exc) 1-3
close all;
clear;
clc;

t_start = -1;
t_end = 1;
fs = 50;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '1-3 Main Function');
x3 = cos(2*pi*5*t).*rectpuls(t);
plot(t, x3);
title('cos(2*pi*5*t) * rectpuls(t)', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');

figure('Name', '1-3 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x3f = fft(x3);
plot(freq1, abs(x3f)/max(abs(x3f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');


subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x3f_shift= fftshift(x3f);
plot(freq2, abs(x3f_shift)/max(abs(x3f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
%% Exc) 1-4
close all;
clear;
clc;

t_start = 0;
t_end = 1;
fs = 100;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '1-4 Main Function');
x4 = cos((30*pi*t) + (pi/4));
plot(t, x4);
title('cos((30*pi*t) + (pi/4))', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');


figure('Name', '1-4 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x4f = fft(x4);
plot(freq1, abs(x4f)/max(abs(x4f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
xlim([10 90]);

subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x4f_shift= fftshift(x4f);
plot(freq2, abs(x4f_shift)/max(abs(x4f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
xlim([-20 20]);


figure('Name', '1-4 Fourier Transform(angle)');
subplot(2,1,1);
tol = 1e-6;
x4f(abs(x4f) < tol) = 0;
theta = angle(x4f);
plot(freq1,theta/pi);
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency (Hz)');
xlim([10 90]);
ylabel('Phase / \pi');
ylim([-0.3 0.3]);

subplot(2,1,2);
tol = 1e-6;
x4f_shift(abs(x4f_shift) < tol) = 0;
theta = angle(x4f_shift);
plot(freq2,theta/pi);
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency (Hz)');
xlim([-20 20]);
ylabel('Phase / \pi');
ylim([-0.3 0.3]);
%% Exc) 1-5
close all;
clear;
clc;

t_start = -19;
t_end = 19;
fs = 50;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '1-5 Main Function');
x5 = 0;
for k=-9:9
    x5 = x5 + rectpuls(t - (2*k));
end
plot(t, x5);
title('Sigma k=-9:9 : rectpuls(t - 2k)', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');
ylim([-0.5 1.5]);



figure('Name', '1-5 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x5f = fft(x5);
plot(freq1, abs(x5f)/max(abs(x5f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');


subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x5f_shift= fftshift(x5f);
plot(freq2, abs(x5f_shift)/max(abs(x5f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
%% End of Exc 1