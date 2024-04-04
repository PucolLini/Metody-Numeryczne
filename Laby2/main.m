clear all
close all
format compact

n_max = 200;
a = 2; % bok kwadratu
r_max = a/2;

[circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max);
plot_circles(a, circles, index_number); % zadanie 
plot_circle_areas(circle_areas); % zadanie 
plot_counts_mean(counts_mean); % zadanie 
[index_number, Edges, I, B, A, b, r] = page_rank();
plot_PageRank(r)
