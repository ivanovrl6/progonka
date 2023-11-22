
% необходимые постоянные
m0 = 9.383e-31;
hpl = 6.63e-34;
% определение длины, квантового числа, волнового числа и т.д
n = 2; % квантовое число
L = 20e-9; % длина потенциальной ямы
number = 500; % количество разбиений
d_h=L/number; %шаг
m=2*m0; % эффективная масса
E = n^2*hpl^2/(8*m*L^2); % Энергия частицы
k = sqrt(2*m*E)/hpl; % волновое число

%получаем матрицу коэффицентов для чиленного представления стационарного
%уравнения Шрёдингера
mat_1D = set_1D_matrix(number,k, d_h);

% заполнение векторов с коэффицентами
% вектор alpha содержит коэффиценты с первой нижней побочной диагонали
% вектор beta содержит коэффиценты с главной диагонали
% вектор gamma содержит коэффиценты с первой верхней побочной диагонали
% вектор delta содержит свободные члены
alpha=transpose(diag(mat_1D,1));
alpha(1,number)=-1;
alpha(1,1)=0;
gamma=transpose(diag(mat_1D,1));
gamma(1,number)=0;
gamma(1,1)=-1;
beta=transpose(diag(mat_1D));
delta = zeros(1,number);
result_A = zeros(1,number);
result_B = zeros(1,number);
psi = zeros(1,number);

% вычисление коэффицентов и значений функции psi
[fir,result_A]=find_A(result_A, number,gamma,beta,alpha);
[sec,result_B]=find_B(result_B,number,delta,beta,alpha,result_A);
[th,psi]=find_x(psi,1,number,result_A,result_B);

%графическое изображение psi-функции для n-го подуровня
plot(1:number,psi,'LineWidth',1.8);
hold on;
grid("on");







