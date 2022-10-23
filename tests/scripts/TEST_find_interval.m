%% TEST_find_interval.m
% Interpolation Toolbox
%
% Unit testing of find_interval function.
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

% clears Workspace and closes all figures
clear; close all;



%% TESTING FOR ODD NUMBER OF NODES

% node vector
x = [1,2,3,4,5];

% --------------------------
% Queries between all nodes.
% --------------------------

% test #1: xq = 1.5
xq = 1.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),1)
TEST_EQUAL(x(r),2)

% test #2: xq = 2.5
xq = 2.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),2)
TEST_EQUAL(x(r),3)

% test #3: xq = 3.5
xq = 3.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),3)
TEST_EQUAL(x(r),4)

% test #4: xq = 4.5
xq = 4.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),4)
TEST_EQUAL(x(r),5)

% ---------------------
% Queries at all nodes.
% ---------------------

% test #5: xq = 1
xq = 1;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),1)
TEST_EQUAL(x(r),2)

% test #6: xq = 2
xq = 2;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),2)
TEST_EQUAL(x(r),3)

% test #7: xq = 3
xq = 3;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),3)
TEST_EQUAL(x(r),4)

% test #8: xq = 4
xq = 4;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),4)
TEST_EQUAL(x(r),5)

% test #9: xq = 5
xq = 5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),4)
TEST_EQUAL(x(r),5)

% -------------------------------
% Queries outside of node vector.
% -------------------------------

% test #10: query below left endpoint
xq = 0;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),1)
TEST_EQUAL(x(r),2)

% test #11: query above right endpoint
xq = 6;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),4)
TEST_EQUAL(x(r),5)



%% TESTING FOR EVEN NUMBER OF NODES

% node vector
x = [1,2,3,4,5,6];

% --------------------------
% Queries between all nodes.
% --------------------------

% test #12: xq = 1.5
xq = 1.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),1)
TEST_EQUAL(x(r),2)

% test #13: xq = 2.5
xq = 2.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),2)
TEST_EQUAL(x(r),3)

% test #14: xq = 3.5
xq = 3.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),3)
TEST_EQUAL(x(r),4)

% test #15: xq = 4.5
xq = 4.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),4)
TEST_EQUAL(x(r),5)

% test #16: xq = 5.5
xq = 5.5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),5)
TEST_EQUAL(x(r),6)

% ---------------------
% Queries at all nodes.
% ---------------------

% test #17: xq = 1
xq = 1;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),1)
TEST_EQUAL(x(r),2)

% test #18: xq = 2
xq = 2;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),2)
TEST_EQUAL(x(r),3)

% test #19: xq = 3
xq = 3;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),3)
TEST_EQUAL(x(r),4)

% test #20: xq = 4
xq = 4;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),4)
TEST_EQUAL(x(r),5)

% test #21: xq = 5
xq = 5;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),5)
TEST_EQUAL(x(r),6)

% test #22: xq = 6
xq = 6;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),5)
TEST_EQUAL(x(r),6)

% -------------------------------
% Queries outside of node vector.
% -------------------------------

% test #10: query below left endpoint
xq = 0;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),1)
TEST_EQUAL(x(r),2)

% test #11: query above right endpoint
xq = 7;
[l,r] = find_interval(x,xq);
TEST_EQUAL(x(l),5)
TEST_EQUAL(x(r),6)



%% PRINTS SUCCESS MESSAGE

fprintf("All tests in TEST_find_interval.m passed.\n")