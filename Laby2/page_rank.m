function [index_number, Edges, I, B, A, b, r] = page_rank()
% I <- macierz jednostkowa o rozmiarze N=8, speye
% B <- macierz sąsiedztwa, macierz rzadka, sparse (z pięcioma argumentami)
% A <- macierz rzadka, spdiags (z czterema argumentami)
% b <- wektor kolumnowy o długości N - prawa strona równania
% r <- wektor zawierający wartości PR dla wszystkich N stron zmodyfikowanej sieci

index_number = 193592;
N=8;
%współczynnik tłumienia
d = 0.85; 
%zmodyfikowana macierz gęsta
Edges = [1, 1, 2 ,2, 2, 3, 3, 3, 4, 4, 5, 5, 6, 6, 6, 7, 8;
         4, 6, 4, 3, 5, 5, 6, 7, 5, 6, 4, 6, 4, 7, 8, 6, 3];

I = speye(N);
B = sparse(Edges(2,:), Edges(1, :), 1, N, N); % 5 arg
A = spdiags((1./ sum(B, 1))', 0, N, N); % 4 arg
b = [(1-d)/8; (1-d)/8; (1-d)/8; (1-d)/8; (1-d)/8; (1-d)/8; (1-d)/8; (1-d)/8];
M = I - d*B*A;
r = M\b;

end

