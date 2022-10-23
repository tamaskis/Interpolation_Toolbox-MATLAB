%% TEST_ALL.m
% Interpolation Toolbox
%
% Runs all unit testing scripts.
%
% Copyright © 2022 Tamas Kis
% Last Update: 2022-10-22
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% DEPENDENCIES:
%   • Simple Unit Testing Toolbox (https://github.com/tamaskis/Simple_Unit_Testing_Toolbox-MATLAB)
%   • Interpolation Toolbox (TODO)



%% SCRIPT SETUP

% clears Workspace and Command Window, closes all figures
clear; clc; close all;

% adds path to testing scripts
addpath('scripts')



%% RUNS ALL TESTS

TEST_find_interval;



%% PRINTS SUCCESS MESSAGE

fprintf("\n==========================\n")
fprintf("SUCCESS: All tests passed.\n")
fprintf("==========================\n\n")