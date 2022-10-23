%==========================================================================
%
% linear_interpolation  Linear interpolation of univariate, vector-valued
% data.
%
%   yq = linear_interpolation(x,y,xq)
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
% https://tamaskis.github.io/files/Algorithms_for_Interpolation.pdf
%
%--------------------------------------------------------------------------
%
% ------
% INPUT:
% ------
%   x       - ((N+1)×1 double) node vector (independent variable data)
%   y       - (m×(N+1) double) value matrix, (dependent variable data)
%   xq      - (q×1 double) query vector (i.e. where to interpolate)
%
% -------
% OUTPUT:
% -------
%   yq      - (m×q double) interpolated values of y at the query points
%
%==========================================================================
function yq = linear_interpolation(x,y,xq)
    
    % number of query points
    q = length(xq);
    
    % dimension of dependent variable
    m = size(y,1);
    
    % preallocates vector to store interpolated values
    yq = zeros(m,q);
    
    % linear interpolation at each query point
    for i = 1:q
        
        % left and right indices for interpolation interval
        [l,r] = find_interval(x,xq(i));
        
        % performs linear interpolation
        yq(:,i) = y(:,l)*(x(r)-x(l))+y(:,r)*(xq(i)-x(l))/(x(r)-x(l));
        
    end
    
end