// Scala Code
// Declare the class
class FreshAir {
    // Class Variables
    var temperature: Float = 0
    var humidity: Float = 0
    var pollutantIndex: Int = 0
    var windDirection: String = ""
    var windSpeed: Int = 0
    var activityLevel: String = ""
 
    // Constructor
    def this(temp: Float, hum: Float, pollut: Int, dir: String, speed: Int, level: String){
        this()
        temperature = temp
        humidity = hum
        pollutantIndex = pollut
        windDirection = dir
        windSpeed = speed
        activityLevel = level
    }
 
    // Getter methods
    def getTemperature(): Float ={
        return temperature
    }
 
    def getHumidity(): Float ={
        return humidity
    }
 
    def getPollutantIndex(): Int ={
        return pollutantIndex
    }
 
    def getWindDirection(): String ={
        return windDirection
    }
 
    def getWindSpeed(): Int ={
        return windSpeed
    }
 
    def getActivityLevel(): String ={
        return activityLevel
    }
 
    // Setter methods
    def setTemperature(temp: Float): Unit ={
        this.temperature = temp
    }
 
    def setHumidity(hum: Float): Unit ={
        this.humidity = hum
    }
 
    def setPollutantIndex(pollut: Int): Unit ={
        this.pollutantIndex = pollut
    }
 
    def setWindDirection(dir: String): Unit ={
        this.windDirection = dir
    }
 
    def setWindSpeed(speed: Int): Unit ={
        this.windSpeed = speed
    }
 
    def setActivityLevel(level: String): Unit ={
        this.activityLevel = level
    }
 
    // toString method
    override def toString():String = 
        "Temperature: " + temperature + ", Humidity: " + humidity + ", Pollutant Index: " + pollutantIndex + 
        ", Wind Direction: " + windDirection + ", Wind Speed: " + windSpeed + ", Activity Level: " + activityLevel
}
 
// Driver Program
object Driver {
    def main(args: Array[String]): Unit = {
        // Create an instance of FreshAir
        val freshAir = new FreshAir(25.5f, 65.0f, 50, "South-East", 5, "Moderate")
 
        // Print the details
        println("Fresh Air details:")
        println(freshAir.toString())
 
        // Set the activity level to High
        freshAir.setActivityLevel("High")
 
        // Print the details again
        println("\nUpdated Fresh Air details:")
        println(freshAir.toString())
    }
}