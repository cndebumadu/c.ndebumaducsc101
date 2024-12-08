fn main() {
    // Using Vec::new()
    let v : Vec<i64> = Vec::new();

    // printing size of the vector
    println!("\nThe lenght of Vec::new is: {}",v.len());

    // Using macro
    let v = vec!["Grace", "Effiong", "Basil", "Kareen","susan"];

    // printing the sixe of the vector
    println!("\nThe length of macro is: { }",v.len());
}
