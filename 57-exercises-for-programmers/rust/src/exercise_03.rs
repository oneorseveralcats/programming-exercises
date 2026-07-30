// Create a program that prompts for a quote and an author. Display the
// quotation and author as shown in the example output.

pub mod exercise_3 {

    struct Quotation {
        author : String,
        quote : String,
    }

    pub fn run() {
        display_quotation(prompt_quotation())
    }

    fn prompt_quotation() -> Quotation {
        use std::io::{stdin, stdout, Write};

        let mut author = String::new();
        let mut quote = String::new();

        print!("What is the quote? ");
        stdout().flush().unwrap();

        stdin().read_line(&mut quote).expect("Error: unable to read quote.");

        print!("What said it? ");
        stdout().flush().unwrap();

        stdin().read_line(&mut author).expect("Error: unable to read author.");

        let author = author.trim().to_string();
        let quote = quote.trim().to_string();

        Quotation { author, quote }
    }

    fn display_quotation (quotation : Quotation) {
        println!("{} says, \"{}\"", quotation.author, quotation.quote);
    }
}
