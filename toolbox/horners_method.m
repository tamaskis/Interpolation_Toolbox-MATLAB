%==========================================================================
%
% horners_method  Horner's method for evaluating a univariate,
% vector-valued polynomial.
%
%   y = horners_method(x,C)
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
%   x       - (1×1 double) evaluation point
%   C       - (m×(n+1) double) coefficient matrix
%
% -------
% OUTPUT:
% -------
%   y       - (m×1 double) evaluation of pₙ(x)
%
% -----
% NOTE:
% -----
%   --> pₙ(x) is the nth degree, univariate, vector-valued polynomial
%       defined as
%
%           pₙ(x) = c₀ + c₁x + c₂x² + ⋯ + cₙxⁿ
%       
%       where c₀, ..., cₙ ∈ ℝᵐ and where the coefficient matrix, 
%       C ∈ ℝᵐˣ⁽ⁿ⁺¹⁾, is defined as
%
%           C = [ c₀  ⋯  cₙ ] 
%
%==========================================================================
function y = horners_method(x,C)
    
    % degree of polynomial
    n = size(C,2)-1;
    
    % initialize Horner's algorithm
    y = C(:,n+1);
    
    % recursively compute pₙ(x)
    for i = n:(-1):1
        y = x*y+C(:,i);
    end
    
end