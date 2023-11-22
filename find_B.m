function [Bn, result_B] = find_B(result_B, N, d, b, a, A)
    if(N==1)
        Bn=d(1,N)/b(1,N);
        result_B(1,N)=Bn;
    else
        [koeff_B,result_B]=find_B(result_B,N-1,d,b,a,A);
        Bn=(d(1,N)-a(1,N)*koeff_B)/(b(1,N)+a(1,N)*A(1,N-1));
        result_B(1,N)=Bn;
    end
end