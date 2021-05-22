%Just a proof of concept. You input a bpm and it will deliver an error
%message corresponding to bpm
%700-800 is audible range where beats are still differentiable
%Cant hear 900
%Housekeeping
clc;clear;close all;

%Asks for user input
beatsmin=inputdlg('Beats per min: ');
beatsmin=str2double(beatsmin);
%Converts to beats per second
beatspersec=beatsmin/60;

%This is the while loop that runs while doing music stuff
while(1)
    beep
    pause(1/beatspersec)
end