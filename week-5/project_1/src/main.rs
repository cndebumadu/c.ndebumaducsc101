use std::io;

fn main() {
    // Display the menu
    println!("Menu:");
    println!("P = Poundo Yam/Edinkaiko Soup - N3,200");
    println!("F = Fried Rice & Chicken - N3,000");
    println!("A = Amala & Ewedu Soup - N2,500");
    println!("E = Eba & Egusi Soup - N2,000");
    println!("W = White Rice & Stew - N2,500");

    // Input food type and quantity
    let mut food_type = String::new();
    let mut quantity = String::new();

    println!("\nEnter the type of food (P/F/A/E/W):");
    io::stdin()
        .read_line(&mut food_type)
        .expect("Failed to read input");

    println!("Enter the quantity:");
    io::stdin()
        .read_line(&mut quantity)
        .expect("Failed to read input");

    // Trim and convert inputs
    let food_type = food_type.trim().to_uppercase();
    let quantity: i32 = match quantity.trim().parse() {
        Ok(q) => q,
        Err(_) => {
            println!("Invalid quantity entered. Please enter a number.");
            return;
        }
    };

    // Price calculation based on food type
    let price_per_item = match food_type.as_str() {
        "P" => 3200,
        "F" => 3000,
        "A" => 2500,
        "E" => 2000,
        "W" => 2500,
        _ => {
            println!("Invalid food type entered. Please select from the menu.");
            return;
        }
    };

    let total_price = price_per_item * quantity;

    // Apply discount if total price is greater than N10,000
    let final_price = if total_price > 10_000 {
        total_price as f64 * 0.95
    } else {
        total_price as f64
    };

    // Display the total charges
    println!("\nTotal price before discount: N{}", total_price);
    println!(
        "Total price after discount (if applicable): N{:.2}",
        final_price
    );
}
