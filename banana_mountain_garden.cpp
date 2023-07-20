#include <iostream>
#include <string>

//A Breath of Fresh Air  

int main()
{
	std::cout << "Stepping outside into the fresh air, you take a deep breath.\n";
	std::cout << "The cool breeze seemed to blow away all the dust and stress of the day.\n";
	std::cout << "It somehow feels like a moment of clarity and peace.\n";
	
	std::string scenery;
	std::cout << "What do you see when you look around you?\n";
	std::cin >> scenery;
	
	std::cout << "The " << scenery << " looked stunning under the starry night sky.\n";
	std::cout << "The smell of the wind and the sound of the rustling leaves made you feel so alive.\n";
	std::cout << "You know that life is a journey and you're grateful for the moments like this.\n";
	
	std::string thoughts;
	std::cout << "What are you thinking about right now?\n";
	std::cin >> thoughts;
	
	std::cout << "Your thoughts of " << thoughts << " now seemed so insignificant in this beautiful environment.\n";
	std::cout << "No worries, no stress..just the bliss of the night and the mysterious feelings it brings.\n";
	std::cout << "What a great reminder of the beauty and adventure life has to offer.\n";
	
	std::string thing;
	std::cout << "What's the first thing you want to do?\n";
	std::cin >> thing;
	
	std::cout << "You decide to " << thing << ". It's the perfect way to start off your evening.\n";
	std::cout << "As you head back inside, you take one last breath of the fresh air.\n";
	std::cout << "It's a moment you'll surely remember and cherish.\n";
	
	return 0;
}