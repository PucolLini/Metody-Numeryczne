function plot_counts_mean(counts_mean)
    figure;
    circles_amount = length(counts_mean);
    x = 1:circles_amount;
    plot(x, counts_mean);
    xlabel("Liczba kół");
    ylabel("Średnia ilość losów na wygenerowanie kół");
    title("Wykres do zadania5");
    % print -dpng zadanie5.png
end