fn main() {
    let sales_data = [
        ("Toshiba", 2, 450_000.00),
        ("Mac", 1, 1_500_000.00),
        ("HP", 3, 750_000.00),
        ("Dell", 3, 2_850_000.00),
        ("Acer", 1, 250_000.00),
    ];

    let mut total_quantity = 0;
    let mut total_amount = 0.0;

    for (_item, quantity, amount) in sales_data {
        total_quantity += quantity;
        total_amount += amount;
    }

    let average_amount = total_amount / sales_data.len() as f64;

    println!("Total Quantity: {}", total_quantity);
    println!("Total Amount: N{}", total_amount);
    println!("Average Amount: N{}", average_amount);
}