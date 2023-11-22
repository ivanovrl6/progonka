function [mat_1D] = set_1D_matrix(size, k, d_h)
    ones_f=zeros(1,size-1)-1;
    four=zeros(1,size)+k^2*d_h^2-2;
    mat_1D=diag(four)+diag(ones_f,1)+diag(ones_f,-1);
    
