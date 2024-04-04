function plot_circles(a, circles, index_number)
    % axis equal - wyrównanie skali osi x, y
    % axis([0 a 0 a]) - ograniczenie wyświetlanego obszaru
    % hold on - umożliweienie dodawania nowych okręgów do wykresu bez kasowania poprzednio dodanych okręgów
    % w pętli pause(0,1) - zobrazowanie w jakiej kolejności okręgi były losowane
    
    figure;
    hold on;
    axis equal;
    axis([0 a 0 a]);
    
    % sekwencyjnie wywoływanie plot_circle
    for i = 1:size(circles, 1)
        plot_circle(circles(i, 3), circles(i, 1), circles(i, 2));
        % pause (0.1);
    end
    hold off
    % print -dpng zadanie1.png 
end