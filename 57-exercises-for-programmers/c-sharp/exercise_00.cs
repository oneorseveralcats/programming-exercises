// Create a simple tip calculator. The program should prompt for a bill amount
// and a tip rate. The program must compute the tip and then display both the
// tip and the total amount of the bill.

public class Exercise0 {
	TipCalculator calculator;
	public Exercise0() {
		calculator = new();
	}

	public class TipCalculator {
		float Bill { get; set; }
		float TipRate { get; set; }
		float Tip { get; set; }

		public TipCalculator() {
			PromptBillInfo();
			ComputeTip();
			DisplayOutput();
		}

		void PromptBillInfo() {
			float PromptFloat(string prompt) {
				bool successfullyParsed;
				string input;
				float parsedInput; 
				do {
					System.Console.Write(prompt);
					input = System.Console.ReadLine();
					successfullyParsed = System.Single.TryParse(input, out parsedInput);
				} while (!successfullyParsed);

				return parsedInput;
			}
		
			Bill = PromptFloat("Enter Bill Amount: ");
			TipRate = PromptFloat("Enter Tip Rate (as decimal): ");
		}

		void ComputeTip() {
			Tip = TipRate * Bill;
		}

		void DisplayOutput() {
			System.Console.WriteLine();
			System.Console.WriteLine("=== Receipt ===");
			System.Console.WriteLine("Bill:     {0,5:0.00}", Bill);
			System.Console.WriteLine("Tip Rate: {0,5:P0}", TipRate);
			System.Console.WriteLine("Tip:      {0,5:0.00}", Tip);
			System.Console.WriteLine("Total:    {0,5:0.00}", Bill+Tip);
		}
	}
}

