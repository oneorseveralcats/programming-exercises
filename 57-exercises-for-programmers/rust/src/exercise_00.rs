// Create a simple tip calculator. The program should prompt for a bill amount
// and a tip rate. The program must compute the tip and then display both the
// tip and the total amount of the bill.

pub mod exercise_0 {
    pub fn run() {
        let bill_amount = prompt_bill();
        let tip_rate = prompt_tip_rate();        
        let total_amount = compute_total(bill_amount, tip_rate);

        display_tip_and_total(bill_amount, total_amount);
    }

    fn prompt_user_until_f64(prompt : &str) -> f64 {
        use std::io::{stdin, stdout, Write};

        print!("{}", prompt);
        stdout().flush().unwrap();

        let mut value = String::new();
        stdin()
            .read_line(&mut value)
            .expect("Failed to read input");

        match value.trim().parse::<f64>() {
            Ok(v) if v >= 0.0 => v,
            _ => {
                eprintln!("Error: Invalid Input.");
                prompt_user_until_f64(prompt)
            }
        }
    }

    fn prompt_bill() -> f64 {
        prompt_user_until_f64("Enter the bill amount: ")
    }   

    fn prompt_tip_rate() -> f64 {
        prompt_user_until_f64("Enter the tip percent (e.g. '15%' should be just '15'): ")
    }

    fn compute_total(bill_amount : f64, tip_rate : f64) -> f64 {
        let tip = bill_amount * tip_rate / 100.0;

        ((bill_amount + tip) * 100.0).round() / 100.0
    }

    fn display_tip_and_total (bill_amount: f64, total_amount: f64) {
        println!("Tip: {}", ((total_amount - bill_amount) * 100.0).round() / 100.0);
        println!("Total: {}", total_amount);
    }

    mod tests {
        #[test]
        fn correct_amount() {
            use super::compute_total;

            let bill = 225.342;
            let tip_rate = 9.325;
            let total = compute_total(bill, tip_rate);

            assert_eq!(total, 246.36);
        }
    }
}
