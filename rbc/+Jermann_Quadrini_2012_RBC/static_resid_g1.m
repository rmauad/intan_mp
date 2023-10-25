function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = Jermann_Quadrini_2012_RBC.static_g1_tt(T, y, x, params);
    end
    residual = Jermann_Quadrini_2012_RBC.static_resid(T, y, x, params, false);
    g1       = Jermann_Quadrini_2012_RBC.static_g1(T, y, x, params, false);

end
