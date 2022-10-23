%==========================================================================
%
% find_interval  Finds the interval containing a query point.
%
%   [l,r] = find_interval(x,xq)
%
% Copyright © 2022 Tamas Kis
% Last Update: 2022-10-23
% Website: https://tamaskis.github.io
% Contact: tamas.a.kis@outlook.com
%
% TOOLBOX DOCUMENTATION:
% https://tamaskis.github.io/Interpolation_Toolbox-MATLAB/
%
% TECHNICAL DOCUMENTATION:
% https://tamaskis.github.io/files/Univariate_Interpolation.pdf
%
%--------------------------------------------------------------------------
%
% ------
% INPUT:
% ------
%   x       - ((N+1)×1 or 1×(N+1) double) node vector (independent variable
%             data)
%   xq      - (1×1 double) query point
%
% -------
% OUTPUT:
% -------
%   l       - (1×1 double) left index of interval containing query point
%   r       - (1×1 double) right index of interval containing query point
%
% -----
% NOTE:
% -----
%   --> "x" must be a monotonically increasing vector.
%
% --------------
% SPECIAL CASES:
% --------------
%   --> If xq ≤ x₁, then [l,r] = [1,2].
%   --> If xq ≥ xₙ₊₁, then [l,r] = [n,n+1].
%   --> If xq = xᵢ for i < n + 1, then [l,r] = [i,i+1].
%
%==========================================================================
function [l,r] = find_interval(x,xq)
    
    % number of subintervals
    N = length(x)-1;
    
    % ----------------------------------------------
    % Case #1: Query point less than or equal to x₁.
    % ----------------------------------------------
    
    % "xq" below "x"
    if xq <= x(1)
        l = 1;
        r = 2;
        
    % ---------------------------------------------------
    % Case #2: Query point greater than or equal to xₙ₊₁.
    % ---------------------------------------------------
    
    % "xq" above "x"
    elseif xq >= x(N+1)
        l = N;
        r = N+1;
        
    % ----------------------------------------
    % Case #3: Query point contained within x.
    % ----------------------------------------
    
    else
        
        % initializes left and right indices
        l = 1;
        r = N+1;
        
        % binary search procedure
        while l < r
            
            % midpoint index
            m = floor((l+r)/2);
            
            % discard either left or right half of search space
            if x(m) < xq
                l = m+1;
            else
                r = m;
            end
            
        end
        
        % decrement l by 1 unless xₗ = xq
        if x(l) ~= xq
            l = l-1;
        end
        
        % reset right index based on value of left index
        r = l+1;
        
    end
    
end