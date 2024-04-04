load('filtr_dielektryczny.mat');

N = size(A, 1);
time_direct = ones(N, 1);
time_Jacobi = ones(N, 1);
time_Gauss_Seidel = ones(N, 1);
err_norm_direct = ones(N,1);
err_norm_Jacobi = ones(N, 1);
err_norm_Gauss_Seidel = ones(N, 1);

for i=1:2
    %metoda bezposrednia
    [A, b, x, time_direct, err_norm, index_number] = solve_direct(N(i));
    time_direct(i) = time_direct;
    err_norm_direct(i)=err_norm;
    %jacobiego
    [A,b,M,bm,x,err_norm,time,iterations,index_number] = solve_Jacobi(N(i));
    time_Jacobi(i) = time;
    err_norm_Jacobi(i)=err_norm;
    %gauss
    [A,b,M,bm,x,err_norm,time,iterations,index_number] = solve_Gauss_Seidel(N(i));
    time_Gauss_Seidel(i) = time;
    err_norm_Gauss_Seidel(i)=err_norm;
end

disp('Czasy wykonania i liczba iteracji dla różnych metod:');
disp('Rozmiar macierzy (N) | Bezpośrednia | Jacobiego | Gaussa-Seidela');
for i = 1:N
    fprintf('%18d | %12.6f | %9d | %13.6f | %9d\n', i, time_direct(i), iterations_Jacobi(i), time_Gauss_Seidel(i), iterations_Gauss_Seidel(i));
end