function [An, result_A] = find_A(result_A, N, c, b, a)
    if(N==1)
        An=-c(1,N)/b(1,N);
        result_A(1,N)=An;
    else
        [koeff_A,result_A]=find_A(result_A,N-1,c, b, a);
        An=-c(1,N)/(b(1,N)+a(1,N)*koeff_A);
        result_A(1,N)=An;
    end
end