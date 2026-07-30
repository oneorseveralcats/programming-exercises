// Create a program that prompts for your name and prints a greeting using your
// name.

pub mod exercise_1 {
    pub fn run() {
        display_greeting();
    }

    fn display_greeting() {
        use std::io::{stdin, stdout, Write};

        print!("What is your name? ");
        stdout().flush().unwrap();

        let mut name = String::new();
        stdin()
            .read_line(&mut name)
            .expect("Error: Invalid Input.");

        println!("Hello, {}, nice to meet you!", name.trim());
    }
}
