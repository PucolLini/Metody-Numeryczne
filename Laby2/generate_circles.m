function [circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max)
    % jeżeli działa poprawnie wkleić kod do Function i Submit na enauczaniu
    % Deklaracja funkcji: function [circles, index_number] = generate_circles(a, r_max, n_max), gdzie index_number=193592
    % zdefiniować zmienną L1 = 2,
    % macierz circles, zwracana przez funkcję generate_circles, powinna mieć n_max wierszy oraz trzy kolumny, 
    % przy czym każdy wiersz powinien zawierać kolejno następujące parametry i-tego wylosowanego okręgu: X, Y, R,

    index_number = 193592; 
    % L1 = 2;
    
    % Macierz przechowująca informacje o okręgach [X, Y, R]
    circles = zeros(n_max, 3); 
    % wektor kolumnowy, liczba dziesiątek z indeksu = 9
    circle_areas = zeros(n_max, 1);
    % wektor wierszowy
    rand_counts = zeros(1, n_max);
    counts_mean = zeros(1, n_max);

    % liczba okręgów
    num_circles = 1; 
    correct = 0;
    
    counter_rand = 1;
    counter_circles = 1;
    % Tworzenie okręgów
    % while num_circles <= n_max
    while num_circles <= n_max
        % Losowanie położenia i promienia okręgu
        % 
        R = rand()*r_max;
        X = rand()*(a-2*R) + R; % mamy pewność że jest w środku kwadratu
        Y = rand()*(a - 2*R) + R;
        
        %  * r_max 
        fit = true;
        correct = 0;

        for i = 1:num_circles

            x = circles(i, 1);
            y = circles(i, 2);
            r = circles(i, 3);
               
            % do kwadratu podnosi więc nie trzeba sprawdzać który okrąg jest większy
            % czy nachodzi na inny okrąg
            distance = sqrt((Y-y)^2 + (X -x)^2);
        
            if distance <= R + r
               fit = false;
               counter_rand = counter_rand + 1;
               break;
            end
        
            % Czy wychodzi poza kwadrat
            if fit == true && X - R >= 0 && X + R <= a && Y - R >= 0 && Y + R <= a
                % dodaj okrąg
                correct = correct + 1;
                % num_circles = num_circles + 1;
                % circles(num_circles, :) = [X, Y, R];
                rand_counts(counter_circles) = counter_rand;
                counter_circles = counter_circles + 1;
                counter_rand = 1;
            end
        end
        if correct == num_circles
            circles(num_circles, :) = [X, Y, R];
            if num_circles == 1
                circle_areas(num_circles) = pi * R^2;
                counts_mean(num_circles) = rand_counts(num_circles);
            else
                circle_areas(num_circles) = circle_areas(num_circles - 1) + pi * R^2;
                counts_mean(num_circles) = mean(rand_counts(1:num_circles));
            end
            num_circles = num_circles + 1;
        end
    end
end