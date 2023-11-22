function [mat_2D] = set_2D_matrix(size)
    ones_f=zeros(1,size-1)-1;
    ones_th=zeros(1,size-5)-1;
    four=zeros(1,size)+4;
    mat_2D=diag(four)+diag(ones_f,1)+diag(ones_f,-1)+diag(ones_th,5)+diag(ones_th,-5);
    
