// Write a program that prompts for two numbers. Print the sum, difference,
// product, and quotient of those numbers.

public class Exercise5 {
	int First { get; set; }
	int Second { get; set; }

	public Exercise5() {
		PromptInts();
		PrintOutput();
	}

	void PromptInts() {
		int PromptInt(string prompt) {
			string input;
			int parsedInput;
			bool successfullyParsed;
			do {
				System.Console.Write(prompt);
				input = System.Console.ReadLine();
				successfullyParsed = System.Int32.TryParse(input, out parsedInput);
			} while(!successfullyParsed);

			return parsedInput;
		}

		First = PromptInt("Enter first integer: ");
		Second = PromptInt("Enter second integer: ");
	}

	void PrintOutput() {
		System.Console.WriteLine();
		System.Console.WriteLine("===Output===");
		System.Console.WriteLine("{0} + {1} = {2}", First, Second, (First+Second));
		System.Console.WriteLine("{0} - {1} = {2}", First, Second, (First-Second));
		System.Console.WriteLine("{0} * {1} = {2}", First, Second, (First*Second));
		System.Console.WriteLine("{0} / {1} = {2}", First, Second, (First/Second));
	}
}
