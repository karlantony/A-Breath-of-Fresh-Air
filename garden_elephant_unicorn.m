%% A Breath of Fresh Air

% This program is designed to calculate the amount of air in a room given
% user-defined parameters such as length, width, and height.

clc;

% Define the units to be used
units = 'liters';

% Define room parameters
length = 6; % meters
width = 4; % meters
height = 3; % meters

% Calculate the volume of the room
roomVolume = length * width * height;

% Convert room volume to liters
roomVolume = roomVolume * 1000;

% Calculate the amount of air in the room 
airVolume = roomVolume * 0.8;

% Display the result
fprintf('The amount of air in the room is %.2f %s. \n', airVolume, units)

% Calculate the air pressure
airPressure = 101325 * 0.8; % Pascals

% Convert air pressure to kPa
airPressure = airPressure / 1000;

% Display the result
fprintf('The air pressure in the room is %.2f kPa. \n', airPressure)

% Calculate air temperature
airTemperature = 20; % degrees Celsius

% Convert air temperature to Kelvin
airTemperature = airTemperature + 273.15;

% Display the result
fprintf('The air temperature in the room is %.2f K. \n', airTemperature)

% Calculate the air density
airDensity = airPressure ./ (airTemperature * 0.287);

% Display the result
fprintf('The air density in the room is %.2f kg/m^3. \n', airDensity)

% Calculate the air composition
airComposition = [0.9 0.05 0.03 0.02];

% Calculate the mass of air in the room
airMass = airVolume .* airDensity;

% Calculate the mass of each gas in the room
gasMass = airMass .* airComposition;

% Display the result
fprintf('The mass of nitrogen in the room is %.2f kg. \n', gasMass(1))
fprintf('The mass of oxygen in the room is %.2f kg. \n', gasMass(2))
fprintf('The mass of carbon dioxide in the room is %.2f kg. \n', gasMass(3))
fprintf('The mass of water vapor in the room is %.2f kg.\n', gasMass(4))

% Calculate the air quality index
ozoneLevel = 0.02; % parts per million

aqi = (100 - (ozoneLevel * 1.25)) * 0.25;

% Display the result
fprintf('The air quality index in the room is %.2f. \n', aqi)

% Calculate the air velocity
airVelocity = 0.5; % meters/second

% Calculate the air flow
airFlow = airVelocity * airVolume;

% Display the result
fprintf('The air flow in the room is %.2f m^3/s. \n', airFlow)

% Calculate the air filtration rate
airFiltration = 0.25; % liters/minute

% Calculate the total air filtration
totalFiltration = airFiltration * airVolume;

% Display the result
fprintf('The total air filtration in the room is %.2f liters/min. \n', totalFiltration)

% Calculate the oxygen level
oxygenLevel = 0.21; % volume fraction

% Calculate the oxygen concentration
oxygenConcentration = oxygenLevel * airVolume;

% Display the result
fprintf('The oxygen concentration in the room is %.2f liters. \n', oxygenConcentration)

% Calculate the carbon dioxide level
carbonDioxideLevel = 400; % parts per million

% Calculate the carbon dioxide concentration
carbonDioxideConcentration = (carbonDioxideLevel * airVolume) / 1000;

% Display the result 
fprintf('The carbon dioxide concentration in the room is %.2f liters. \n', carbonDioxideConcentration)

% Calculate the humidity level
humidityLevel = 0.70; % relative humidity

% Calculate the humidity 
humidity = (humidityLevel * airVolume) / 1000;

% Display the result
fprintf('The humidity in the room is %.2f liters. \n', humidity)

% Calculate the air cleanliness 
danderLevel = 0.02; % parts per million

airCleanliness = (100 - (danderLevel * 1.5)) * 0.25;

% Display the result
fprintf('The air cleanliness in the room is %.2f. \n', airCleanliness)

% Calculate the air quality score
airQualityScore = (airCleanliness + aqi) / 2;

% Display the result
fprintf('The overall air quality score in the room is %.2f. \n', airQualityScore)