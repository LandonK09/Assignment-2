%Problem 1 
% a) 
population = [5000, 5200, 5350, 5600, 5800];

% b) 
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);
% c)
pop_data = [population; [0 growth_rate]];

% d)
fprintf('Year\tPopulation\tGrowth Rate (%%)\n');
fprintf('------------------------------------------\n');
for i = 1:length(population)
    fprintf('%d\t%d\t\t%.2f\n', i, population(i), pop_data(2, i)); % Use pop_data to access growth rates
end