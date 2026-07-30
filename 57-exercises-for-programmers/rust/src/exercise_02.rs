// Create a program that prompts for an input string and displays output that
// shows the input string and the number of characters the string contains.

pub mod exercise_2 {
    pub fn run() {
        display_string_length(prompt_string());
    }

    fn prompt_string() -> String {
        use std::io::{stdin, stdout, Write};

        print!("What is the input string? ");
        stdout().flush().unwrap();

        let mut string = String::new();
        stdin()
            .read_line(&mut string)
            .expect("Error: failed to read input.");

        let string = string.trim();
        if string.len() > 0 {
            string.to_string()
        }
        else {
            eprintln!("Error: String is empty");
            prompt_string()
        }
    }

    fn display_string_length(string : String) {
        println!("{} has {} characters.", string, string.len());
    }
}
