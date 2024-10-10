%Problem 3
clear var 
clc
% Creating the file
fileID = fopen('weather_data.txt', 'w');

% Labeling each section of data 
fprintf(fileID, 'Date,Temperature,Humidity,Precipitation\n');

% inputing the data into a the file
fprintf(fileID, '2024-09-01,25.5,60,0\n');
fprintf(fileID, '2024-09-02,26.0,65,5\n');
fprintf(fileID, '2024-09-03,24.5,70,10\n');
fprintf(fileID, '2024-09-04,23.0,75,15\n');
fprintf(fileID, '2024-09-05,22.5,80,20\n');
fclose(fileID);

% Creates a cell array from the file
data = readcell('weather_data.txt');

% gathers the numbers for each respective category 
temperature = cell2mat(data(2:end, 2)); % Temperature
humidity = cell2mat(data(2:end, 3));    % Humidity
precipitation = cell2mat(data(2:end, 4)); % Precipitation

% Calculates the average temperature, humidity, and total precipitation
avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);

% save the answers to the file created before
summary_fileID = fopen('weather_summary.txt', 'w');
fprintf(summary_fileID, 'Average Temperature: %.2f\n', avg_temperature);
fprintf('The average temperature is:')%Used to show the answers on this code as well as keeping it saved to the extra txt doc. 
disp(avg_temperature)
fprintf(summary_fileID, 'Average Humidity: %.2f\n', avg_humidity);
fprintf('The average humidity is:')
disp(avg_humidity)
fprintf(summary_fileID, 'Total Precipitation: %.2f\n', total_precipitation);
fprintf('The total precipitation is:');
disp(total_precipitation)
fclose(summary_fileID);