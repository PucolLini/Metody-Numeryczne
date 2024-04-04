function plot_circle_areas(circle_areas)
    figure;
    circles_amount = length(circle_areas);
    x = 1:circles_amount;
    plot(x, circle_areas);
    xlabel("Liczba kół");
    ylabel("Suma pól kół");
    title("Wykres do zadania3");
    
end