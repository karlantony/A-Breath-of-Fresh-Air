public class A_Breath_Of_Fresh_Air {
 
public static void main(String[] args) {
 
    // air quality variables
    int airPollutionLevel = 0;
    int airQualityIndex = 0;
 
    // trees planted and oxygen produced
    int treesPlanted = 0;
    int oxygenProduced = 0;
 
    // creation of fresh air for the world
    int freshAirCreated = 0;
 
    // looping through the air pollution levels
    while (airPollutionLevel <= 800) {
 
        if (airPollutionLevel <= 300) {
            // planting 1 tree for every 10 air pollution level
            treesPlanted += 10;
            oxygenProduced += 10;
        } else if (airPollutionLevel > 300 && airPollutionLevel <= 600) {
            // planting 2 trees for every 10 air pollution level
            treesPlanted += 20;
            oxygenProduced += 20;
        } else {
            // planting 3 trees for every 10 air pollution level
            treesPlanted += 30;
            oxygenProduced += 30;
        }
 
        // increasing the air pollution level by 10
        airPollutionLevel += 10;
 
        // increasing the air quality index by 10
        airQualityIndex += 10;
 
        // increasing the fresh air created by the oxygen produced
        freshAirCreated += oxygenProduced;
 
    }
 
    // printing the number of trees planted
    System.out.println("Trees planted: " + treesPlanted);
 
    // printing the air quality index
    System.out.println("Air quality index: " + airQualityIndex);
 
    // printing the amount of fresh air created
    System.out.println("Fresh air created: " + freshAirCreated + " cubic feet");
 
}
 
}