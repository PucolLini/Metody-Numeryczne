function plot_problem_5(N, time_Jacobi, time_Gauss_Seidel, iterations_Jacobi, iterations_Gauss_Seidel)
    % N - wektor zawierający rozmiary macierzy dla których zmierzono czas obliczeń metody bezpośredniej
    % vtime_direct - czas obliczeń metody bezpośredniej dla kolejnych wartości N
    figure;

    % WYKRES 1
    subplot(2,1,1);
    plot(N,time_Jacobi); 
    hold on; 
    plot(N,time_Gauss_Seidel); 
    hold off;

    xlabel("Rozmiar macierzy");
    ylabel("Czas obliczeń [s]");
    title("Zależność czasu obliczeń od rozmiaru macierzy dla metody Jacobi i Gaussa Seidela");
    legend('Metoda Jacobi', 'Metoda Gaussa-Seidla', 'Location', 'eastoutside');

    % WYKRES 2
    subplot(2,1,2);

    bar_data = [transpose(iterations_Jacobi), transpose(iterations_Gauss_Seidel)];
    bar(N,bar_data);

    xlabel("Rozmiar macierzy");
    ylabel("Liczba iteracji");
    title("Pomiary czasu działania metody bezpośredniej dla różnych rozmiarów macierzy");
    legend('Metoda Jacobi', 'Metoda Gaussa-Seidla', 'Location', 'eastoutside');

    print -dpng zadanie5.png 
end