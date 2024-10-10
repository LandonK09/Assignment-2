%Problem 4
% Making the vectors for each planet with their respecive sizes and
% distances
clear var 
clc
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
planet_distances = [0.39, 0.72, 1.0, 1.52, 5.2, 9.58, 19.18, 30.07];  % in AU
planet_sizes = [0.055, 0.815, 1.0, 0.107, 317.8, 95.2, 14.5, 17.1];  % relative to Earth

% creates a figure for the sub plot 
figure('Position', [100, 100, 800, 600]);

% makes a scatter plot to seperate the plants by their size and distane
% apart
subplot(2, 1, 1);
scatter(planet_distances, planet_sizes * 50, 100, linspace(1, 8, numel(planet_names)), 'filled');
title('Planet Distances vs. Sizes in the Solar System', 'FontSize', 12);
xlabel('Distance from the Sun (AU)', 'FontSize', 12);
ylabel('Relative Size (Earth = 1)', 'FontSize', 12);
set(gca, 'XScale', 'log', 'YScale', 'log');
grid on;

%makes colored bars to seperate each planet
colormap(lines(numel(planet_names)));
c = colorbar;
c.Ticks = linspace(1, 8, numel(planet_names));
c.TickLabels = planet_names;
c.Label.String = 'Planets';

% makes a chart of the planets 
subplot(2, 1, 2);
bar(planet_distances, 'FaceColor', 'green');
set(gca, 'XTickLabel', planet_names);
title('Distances of Planets from the Sun', 'FontSize', 12);
xlabel('Planets', 'FontSize', 12);
ylabel('Distance from the Sun (AU)', 'FontSize', 12);
grid on;

% Saves the picture
saveas(gcf, 'solar_system_visualization.png');