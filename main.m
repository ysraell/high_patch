%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Israel Goncalves de Oliveira (prof.israel@gmail.com)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all
clc

%% We use Unlocbox
run /home/israel/Documents/ELE311/unlocbox/init_unlocbox.m;

%% Choose the fig:

fig = 'figs/bark.jpg';


%% The magic happening
run load_par.m
%run gen_data.m
run load_data.m
run run_fbpd.m
run show_res.m

%% EOF
