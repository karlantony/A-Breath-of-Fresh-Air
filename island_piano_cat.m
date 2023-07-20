% Script to find 'A Breath of Fresh Air'

% Set up parameters
startRow = 1; % Starting row of data
endRow = 2000; % Ending row of data

% Read in data from the text file
% Delimiter is set to ','
formatSpec = '%f%f%s%[^\n\r]'; % Set format for reading in data
fileID = fopen('A_Breath_of_Fresh_Air.txt','r'); % Open text file
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', ',', 'TextType', 'string', 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n'); % Read in the data
fclose(fileID); % Close file

% Allocate imported array to column variable names
locationX = dataArray{:, 1};
locationY = dataArray{:, 2};
airQuality = dataArray{:, 3};

% Clear temporary variables
clearvars startRow endRow formatSpec fileID dataArray ans;

% Create matrix of results
locations = [locationX, locationY];

% Search for locations with 'A Breath of Fresh Air'
idx = strcmp(airQuality,'Good');

% Find those locations
goodAirLocations = locations(idx(:),:);

% Calculate the distance to the nearest location with 'A Breath of Fresh Air'
distanceFromPoint = pdist2(locationX(1),locationY(1),goodAirLocations(:,1),goodAirLocations(:,2));

% Find the location with the smallest distance
[minDist,idx] = min(distanceFromPoint);

% Return the coordinates of the 'A Breath of Fresh Air' location
bestAirLocation = goodAirLocations(idx,:);

fprintf('The coordinates for the "A Breath of Fresh Air" are: [%d, %d] \n', bestAirLocation);