function [xn,result_x] = find_x(result_x,N, max, A,B)
    if(N==max)
        xn=B(1,N);
        result_x(1,N)=xn;
    else
        [buff_x,result_x]=find_x(result_x,N+1,max,A,B);
        xn=A(1,N)*buff_x+B(1,N);
        result_x(1,N)=xn;
    end
end