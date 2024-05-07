function impedance_delta = impedance_magnitude(omega)
R = 525; %omega
C = 7 * 10^(-5); % F
L = 3; % H

M = 75;

if omega <= 0
    error("Zła wartość omegi");
end

Z = 1/ sqrt(1/R^2+(omega*C - 1/(omega*L))^2);

impedance_delta = Z - M;

end