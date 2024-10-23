fn main() {
    let principal: f64 = 520_000_000.0; // Mortgage loan amount
    let rate: f64 = 10.0; // Annual interest rate
    let time: f64 = 5.0; // Number of years

    // Calculate compound interest
    let amount = principal * (1.0 + (rate / 100.0)).powf(time);
    let compound_interest = amount - principal;

    println!("Compound Interest: N{}", compound_interest);
}
