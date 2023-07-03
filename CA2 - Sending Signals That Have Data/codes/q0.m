%% Exc) 0-1
close all;
clear;
clc;

t_start = 0;
t_end = 1;
fs = 20;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);
freq0_1 = 0:fs/N:(N-1)*fs/N;

x0_1 = exp(1i*2*pi*5*t) + exp(1i*2*pi*8*t);

figure('Name', '0-1 Fourier Transform');
x0_1f = fft(x0_1);
plot(freq0_1, abs(x0_1f)/max(abs(x0_1f)));
xlim([3 10]);
ylim([-2 2]);
xlabel('Frequency(Hz)');
title('exp(1i*2*pi*5*t) + exp(1i*2*pi*8*t)', 'FontSize', 18, 'Color', 'b');

%% Exc) 0-2
close all;
clear;
clc;

t_start = 0;
t_end = 1;
fs = 20;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);
freq0_2 = 0:fs/N:(N-1)*fs/N;

x0_2 = exp(1i*2*pi*5*t) + exp(1i*2*pi*5.1*t);

figure('Name', '0-2 Fourier Transform');
x0_2f = fft(x0_2);
plot(freq0_2, abs(x0_2f)/max(abs(x0_2f)));
title('exp(1i*2*pi*5*t) + exp(1i*2*pi*5.1*t)', 'FontSize', 18, 'Color', 'b');
xlim([1 9]);
ylim([-2 2]);
xlabel('Frequency(Hz)');

%% Exc) 0-3
close all;
clear;
clc;

t_start = 0;
t_end = 1;
fs = 20;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);
freq0_3 = 0:fs/N:(N-1)*fs/N;

x0_3 = exp(1i*2*pi*8.1*t) + exp(1i*2*pi*4*t);

figure('Name', '0-3 Fourier Transform');
x0_3f = fft(x0_3);
plot(freq0_3, abs(x0_3f)/max(abs(x0_3f)));
title('exp(1i*2*pi*8.1*t) + exp(1i*2*pi*4*t)', 'FontSize', 18, 'Color', 'b');
xlim([0 (N-1)*fs/N]);
xlabel('Frequency(Hz)');