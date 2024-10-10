%problem 5
clear var 
clc 
% Creates file for data and importing the prices randomly for the closing
% price
num_days = 30;
closing_prices = round(10 + rand(num_days, 1) * 1000, 2); % Random prices between 10 and 1000
fileID = fopen('stock_data.txt', 'w');

for i = 1:num_days
    fprintf(fileID, '%.2f\n', closing_prices(i));
end
fclose(fileID);
%loads the file created before for analysis 
data = load('stock_data.txt');

% Calculates the demographics between the pricings 
average_price = mean(data);
highest_price = max(data);
lowest_price = min(data);
increased_days = sum(diff(data) > 0); % Counts the days when the price increased

% Shows the results in the command windown to avoid having to switch
% between docs
fprintf('Average Closing Price: %.2f\n', average_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Number of Days Price Increased: %d\n', increased_days);

% creates the plot to chart the closing prices 
figure;
plot(data, '-o', 'DisplayName', 'Daily Closing Prices');
hold on;
yline(average_price, '--', 'Average Price', 'DisplayName', 'Average Price');
yline(highest_price, '--', 'Highest Price', 'DisplayName', 'Highest Price');
yline(lowest_price, '--', 'Lowest Price', 'DisplayName', 'Lowest Price');
hold off;

% labeling the chart 
xlabel('Day');
ylabel('Closing Price ($)');
title('Stock Daily Closing Prices Analysis');
legend('show');
grid on;

% saves an imagine of the pricing change 
saveas(gcf, 'stock_analysis.png');

summary_fileID = fopen('stock_summary.txt', 'w');
fprintf(summary_fileID, 'Stock Analysis Summary:\n');
fprintf(summary_fileID, 'Average Closing Price: %.2f\n', average_price);
fprintf(summary_fileID, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(summary_fileID, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(summary_fileID, 'Number of Days Price Increased: %d\n', increased_days);
fclose(summary_fileID);



