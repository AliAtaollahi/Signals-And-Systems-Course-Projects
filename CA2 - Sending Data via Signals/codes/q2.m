%% Exc) 2-1
close all;
clear;
clc;

t_start = -1;
t_end = 1;
fs = 50;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '2-1 Main Function');
x6 = dirac(t);
id_inf = (x6 == inf);
x6(id_inf) = 1;
plot(t, x6);
title('delta(t)', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');
ylim([0 1.5]);

figure('Name', '2-1 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x6f = fft(x6);
plot(freq1, abs(x6f)/max(abs(x6f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
ylim([0 1.5]);

subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x6f_shift= fftshift(x6f);
plot(freq2, abs(x6f_shift)/max(abs(x6f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');
ylim([0 1.5]);

%% Exc) 2-2
close all;
clear;
clc;

t_start = -1;
t_end = 1;
fs = 50;
ts = 1/fs;
t = t_start:ts:t_end-ts;
N = length(t);


figure('Name', '2-2 Main Function');
x7 = ones(N);
plot(t, x7);
title('1', 'FontSize', 18, 'Color', 'b');
xlabel('Time(s)');
ylim([0 1.5]);



figure('Name', '2-2 Fourier Transform');
subplot(2,1,1);
freq1 = 0:fs/N:(N-1)*fs/N;
x7f = fft(x7);
plot(freq1, abs(x7f)/max(abs(x7f)));
title('0 : fs/N : (N-1)*fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');


subplot(2,1,2);
freq2 = -fs/2:fs/N:fs/2-fs/N;
x7f_shift= fftshift(x7f);
plot(freq2, abs(x7f_shift)/max(abs(x7f_shift)));
title('-fs/2 : fs/N : fs/2-fs/N', 'FontSize', 18, 'Color', 'b');
xlabel('Frequency(Hz)');