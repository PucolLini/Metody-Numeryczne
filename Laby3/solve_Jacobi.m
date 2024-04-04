function [A, b, M, bm, x, err_norm, time, iterations, index_number] = solve_Jacobi(N)
    index_number = 193592;
    L1 = 2;

    [A, b] = generate_matrix(N, L1);

    L = tril(A, -1); % Dolny trójkąt
    U = triu(A, 1); % Górny trójkąt
    D = diag(diag(A)); % Diagonalna
    
    M = -D\(L + U);
    bm = D\b;
    x = ones(N, 1); % Inicjalizacja rozwiązania

    iterations = 0;
    tic;
    for i = 1:1000
        x = M*x + bm;
        err_norm = norm(A*x - b);
        %disp(err_norm);
        iterations=iterations+1;
        if err_norm < 1e-12
            break;
        end
    end
    time = toc;
end
