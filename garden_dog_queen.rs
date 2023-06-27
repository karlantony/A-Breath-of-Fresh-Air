// Main function
fn main() {

    // Variables
    let mut first_breathe = String::from("Inhaling...");
    let mut second_breathe = String::from("Exhaling...");

    // Prints the initial message
    println!("Welcome to A Breath of Fresh Air!");

    // Iterates through 2000 times
    for _i in 0..2000 {
        // Swaps the variables
        let temp = first_breathe;
        first_breathe = second_breathe;
        second_breathe = temp;

        // Prints the current breathing exercise
        println!("{} {}", first_breathe, second_breathe);
    }

    println!("Thanks for trying out A Breath of Fresh Air!");
}