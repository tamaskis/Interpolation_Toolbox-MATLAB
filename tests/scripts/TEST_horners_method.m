%% TEST_horners_method.m
% Interpolation Toolbox
%
% Unit testing of horners_method function.
%
% Copyright © 2022 Tamas Kis
% Last Update: 2022-10-23
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% DEPENDENCIES:
%   • Simple Unit Testing Toolbox (https://github.com/tamaskis/Simple_Unit_Testing_Toolbox-MATLAB)
%   • Interpolation Toolbox (TODO)



%% SCRIPT SETUP

% clears Workspace and closes all figures
clear; close all;



%% SCALAR-VALUED TESTS

% n = 0
c = 1;
x = 5;
y1 = c(1);
y2 = horners_method(x,c);
TEST_EQUAL(y1,y2);

% n = 1
c = [1,2];
x = 5;
y1 = c(1)+c(2)*x;
y2 = horners_method(x,c);
TEST_EQUAL(y1,y2);

% n = 2
c = [1,2,3];
x = 5;
y1 = c(1)+c(2)*x+c(3)*x^2;
y2 = horners_method(x,c);
TEST_EQUAL(y1,y2);

% n = 3
c = [1,2,3,4];
x = 5;
y1 = c(1)+c(2)*x+c(3)*x^2+c(4)*x^3;
y2 = horners_method(x,c);
TEST_EQUAL(y1,y2);



%% VECTOR-VALUED TESTS

% n = 0
C = [1;
     2];
x = 5;
y1 = [C(1,1);
      C(2,1)];
y2 = horners_method(x,C);
TEST_EQUAL(y1,y2);

% n = 1
C = [1,2;
     2,4];
x = 5;
y1 = [C(1,1)+C(1,2)*x;
      C(2,1)+C(2,2)*x];
y2 = horners_method(x,C);
TEST_EQUAL(y1,y2);

% n = 2
C = [1,2,3;
     2,4,6];
x = 5;
y1 = [C(1,1)+C(1,2)*x+C(1,3)*x^2;
      C(2,1)+C(2,2)*x+C(2,3)*x^2];
y2 = horners_method(x,C);
TEST_EQUAL(y1,y2);

% n = 3
C = [1,2,3,4;
     2,4,6,8];
x = 5;
y1 = [C(1,1)+C(1,2)*x+C(1,3)*x^2+C(1,4)*x^3;
      C(2,1)+C(2,2)*x+C(2,3)*x^2+C(2,4)*x^3];
y2 = horners_method(x,C);
TEST_EQUAL(y1,y2);



%% PRINTS SUCCESS MESSAGE

fprintf("All tests in TEST_horners_method.m passed.\n")