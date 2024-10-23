fn main() {
    let initial_value: f64 = 210_000.0; // Initial value of the TV
    let depreciation_rate: f64 = 5.0; // Annual depreciation rate
    let years: f64 = 3.0; // Number of years

    // Calculate the value of the TV after 3 years
    let current_value = initial_value * (1.0 - (depreciation_rate / 100.0)).powf(years);

    println!("Value of the TV after 3 years: N{}", current_value);
}
