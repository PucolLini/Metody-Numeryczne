%4.1.
%omega = 10;
%impedance_delta = impedance_magnitude(omega);

%4.2.
%format long
%f = @(x) x.^2 - 4.01;
%a = 0;
%b = 4;
%max_iterations = 100;
%ytolerance = 1e-12;
%[xsolution,ysolution,iterations,xtab,xdif] = bisection_method(a,b,max_iterations,ytolerance,f);

%4.3.
%a = 40;
%b = 230;
%max_iterations = 100;
%ytolerance = 1e-12;
%[xsolution,ysolution,iterations,xtab,xdif] = secant_method(a,b,max_iterations,ytolerance, @impedance_magnitude);

%4.4.

%a = 1;
%b = 50;
%ytolerance = 1e-12;
%max_iterations = 100;
%omega = 75;

%[omega_bisection,ysolution_bisection,iterations_bisection,xtab_bisection,xdif_bisection] = bisection_method(a,b,max_iterations,ytolerance,@impedance_magnitude);
%[omega_secant,ysolution_secant,iterations_secant,xtab_secant,xdif_secant] = secant_method(a,b,max_iterations,ytolerance, @impedance_magnitude);

%figure;

%subplot(2,1,1);
%plot(xtab_bisection, 'b', 'LineWidth', 1.5);
%hold on;
%plot(xtab_secant, 'r', 'LineWidth', 1.5);
%hold off;

%xlabel('Numer iteracji');
%ylabel('Przybliżenie miejsca zerowego');
%legend('Bisekcja', 'Sieczne');
%title('Przybliżenie miejsca zerowego w kolejnych iteracjach');

%subplot(2,1,2);
%semilogy(xdif_bisection, 'b', 'LineWidth', 1.5);
%hold on;
%semilogy(xdif_secant, 'r', 'LineWidth', 1.5);
%hold off;

%xlabel('Numer iteracji');
%ylabel('Różnica przybliżeń');
%legend('Bisekcja', 'Sieczne');
%title('Różnica przybliżeń w kolejnych iteracjach');

%print -dpng zadanie4.png 

%4.5.
time = 10;
velocity_delta = rocket_velocity(time);