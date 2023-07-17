<?php

// Class to define the 'A Breath of Fresh Air' object

class A_Breath_of_Fresh_Air {

// declare properties
public $message;
public $location;
public $time_of_day;

// Class construct
public function __construct($message, $location, $time_of_day){
	$this->message = $message;
	$this->location = $location;
	$this->time_of_day = $time_of_day;
}

// 'A Breath of Fresh Air' object method
public function take_a_breath(){
	echo "Let's take a ".$this->message." in ".$this->location." at ".$this->time_of_day." and enjoy a breath of fresh air.";
}

// Create the 'A Breath of Fresh Air' object
$breath_of_fresh_air = new A_Breath_of_Fresh_Air("moment", "the beach", "sunset");

// call the take_a_breath() method
$breath_of_fresh_air->take_a_breath();

// Class to define the 'Fresh Air' action

class Fresh_Air_Action {

// declare properties
public $physical;
public $emotional;
public $mental;

// Class construct
public function __construct($physical, $emotional, $mental){
	$this->physical = $physical;
	$this->emotional = $emotional;
	$this->mental = $mental;

}

// 'Fresh Air' action method
public function take_fresh_air(){
	echo "Fresh air can be beneficial physically (".$this->physical."), emotionally (".$this->emotional.") and mentally (".$this->mental.").";
}

// Create the 'Fresh Air' action object
$fresh_air_action = new Fresh_Air_Action("increase energy levels", "reduce stress levels", "improve concentration");

// call the take_fresh_air() method
$fresh_air_action->take_fresh_air();

// Class to define the 'Fresh Air Benefits' action

class Fresh_Air_Benefits {

// declare properties
public $better_sleep;
public $renew_energy;
public $clear_thoughts;

// Class construct
public function __construct($better_sleep, $renew_energy, $clear_thoughts){
	$this->better_sleep = $better_sleep;
	$this->renew_energy = $renew_energy;
	$this->clear_thoughts = $clear_thoughts;
}

// 'Fresh Air Benefits' action method
public function enjoy_the_benefits(){
	echo "The benefits of taking a breath of fresh air can help you to ".$this->better_sleep.", ".$this->renew_energy." and ".$this->clear_thoughts.".";
}

// Create the 'Fresh Air Benefits' action object
$fresh_air_benefits = new Fresh_Air_Benefits("get better sleep", "renew energy", "clear your thoughts");

// call the enjoy_the_benefits() method
$fresh_air_benefits->enjoy_the_benefits();

}
?>