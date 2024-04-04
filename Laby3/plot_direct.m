function plot_direct(N, vtime_direct)
    % N - wektor zawierający rozmiary macierzy dla których zmierzono czas obliczeń metody bezpośredniej
    % vtime_direct - czas obliczeń metody bezpośredniej dla kolejnych wartości N
    figure;
    plot(N, vtime_direct)
    xlabel("Rozmiary macierzy");
    ylabel("Czas obliczeń metody bezpośredniej [s]");
    title("Pomiary czasu działania metody bezpośredniej dla różnych rozmiarów macierzy");
    grid on;
    print -dpng zadanie2.png 
end
