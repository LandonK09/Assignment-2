% Author Name: Landon Keveanos 
% Email: Kevean28@students.rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date:10/2/24
%Problem 2 
clear var
clc
% makes the user input the message and how much they want it to change by 
message = input('Enter a message (lowercase letters only): ', 's');
shift = input('Enter a shift value (1-25): ');

%calls the function made before 
encrypted_message = caesar_cipher(message, shift);

%shows the origional message and the encrypted one
fprintf('Original message: %s\n', message);
fprintf('Encrypted message: %s\n', encrypted_message);