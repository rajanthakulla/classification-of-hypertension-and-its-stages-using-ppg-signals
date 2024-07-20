% Load the .mat file
matFilePath = 'C:\Users\Rajan\Desktop\porject 1\label.mat';
dataStruct = load(matFilePath);

% Assuming the variable name in the .mat file is 'data'
% Replace 'data' with the actual variable name if it's different
variableName = fieldnames(dataStruct);
data = dataStruct.(variableName{1});

% Ensure data is in a suitable format for saving as CSV
% If data is a cell array, convert to categorical first
if iscell(data)
    data = categorical(data);
end

% Convert categorical data to cell array of strings
data = cellstr(data);

% Convert data to a table
dataTable = table(data, 'VariableNames', {'Label'});

% Define the output .csv file path
csvFilePath = 'C:\Users\Rajan\Desktop\porject 1\labels.csv';

% Write the table to a .csv file
writetable(dataTable, csvFilePath);

disp(['Labels successfully saved to ' csvFilePath]);
