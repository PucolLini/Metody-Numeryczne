function [A, b, x, time_direct, err_norm, index_number] = solve_direct(N)
    index_number = 193592;
    L1 = 2; % cyfra jedności indeksu
    [A, b] = generate_matrix(N, L1); % stworzenie macierzy A i wektora b

    % metoda bezpośrednia + zmierzenie czasu
    tic;
    x = A\b;
    time_direct = toc;
    err_norm = norm(A*x-b);
end