%% In the Name of God

close all;
clearvars;
clear;
clc;
%% Exc) 3-1
map_set = create_mape_set();

%% Exc) 3-2
bit_rate = 1;
msg = 'bc';
[signal, t] = coding_amp(msg, bit_rate, map_set);
figure('Name', '3-2');
plot(t, signal);
title('signal for bc, bitrate:1 encoded:0000100010', 'FontSize', 18, 'Color', 'b');

%% Exc) 3-3
figure('units','normalized','outerposition',[0 0 1 1], 'Name', '3-3')
msg = 'signal';
bit_rate = 1;
[signal, t] = coding_amp(msg, bit_rate, map_set);
subplot(1,3,1);
plot(t, signal);
title('signal for "signal", bitrate:1', 'FontSize', 18, 'Color', 'm');

bit_rate = 2;
[signal, t] = coding_amp(msg, bit_rate, map_set);
subplot(1,3,2);
plot(t, signal);
title('signal for "signal", bitrate:2', 'FontSize', 18, 'Color', 'm');

bit_rate = 3;
[signal, t] = coding_amp(msg, bit_rate, map_set);
subplot(1,3,3);
plot(t, signal);
title('signal for "signal", bitrate:3', 'FontSize', 18, 'Color', 'm');

%% Exc) 3-4

%% Functions:

function [signal, t_totall] = coding_amp(msg, bit_rate, map_set)
    max = 2 ^ bit_rate - 1;

    coded_signal = "";
    for i = 1 : length(msg)
        for j = 1 : 32
            if strcmp( msg(i), map_set(1, j))
                disp(map_set(2, j))
                coded_signal = coded_signal + map_set(2, j);
                break
            end
        end
    end
    
    while rem(strlength(coded_signal), bit_rate) ~= 0
        coded_signal = coded_signal + '0'; 
    end 
    
    coded_signal = convertStringsToChars(coded_signal);
    
    t_start = 0;
    t_end = 1;
    fs = 100;
    ts = 1/fs;
    t = t_start:ts:t_end-ts;
    
    t_final = length(coded_signal) / bit_rate;
    
    t_totall = 0:ts:t_final-ts;
    signal = [];
    for i = 1 : length(coded_signal) / bit_rate
        t = t_start:ts:t_end-ts;
        t_start = t_start + 1;
        t_end = t_end + 1;
        val = bin2dec(coded_signal((i - 1)*bit_rate+1 :i*bit_rate));
        s = val * sin(2 * pi * t) / max;
        signal = [signal , s];
    end
end

function map_set = create_mape_set()
    map_set = cell(2, 32);

    i = 1;
    for letter = 'a' : 'z'
        map_set{1, i} = letter;
        map_set{2, i} = dec2bin(i - 1, 5);
        i = i + 1;
    end

    map_set{1, 27} = ' ';
    map_set{1, 28} = '.';
    map_set{1, 29} = ',';
    map_set{1, 30} = '!';
    map_set{1, 31} = ';';
    map_set{1, 32} = '"';

    map_set{2, 27} = '11010';
    map_set{2, 28} = '11011';
    map_set{2, 29} = '11100';
    map_set{2, 30} = '11101';
    map_set{2, 31} = '11110';
    map_set{2, 32} = '11111';
end
