% объявление векторов
size = 4;
matrix=zeros(size);
alpha=zeros(1,size);
beta=zeros(1,size);
gamma=zeros(1,size);
delta=zeros(1,size);
result_A=zeros(1,size);
result_B=zeros(1,size);
result_X=zeros(1,size);

% заполнение векторов необходимыми коэффицентами в соответсвии с СЛАУ
alpha(1,1)=0;alpha(1,2)=-1;alpha(1,3)=2;alpha(1,4)=-1;
beta(1,1)=8;beta(1,2)=6;beta(1,3)=10;beta(1,4)=6;
gamma(1,1)=-2;gamma(1,2)=-2;gamma(1,3)=-4;gamma(1,4)=0;
delta(1,1)=6;delta(1,2)=3;delta(1,3)=8;delta(1,4)=5;

% вычисление коэффицентов и значений x
[f,result_A]=find_A(result_A,size,gamma,beta,alpha);
[s,result_B]=find_B(result_B,size,delta,beta,alpha,result_A);
[t,result_X]=find_x(result_X,1,size,result_A,result_B);

% Исковый вектор x должен иметь вид x = [1 1 1 1]
result_X
