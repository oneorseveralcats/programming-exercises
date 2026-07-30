// Create a program that determines how many years you have left until
// retirement and the year you can retire. It should prompt for your current age
// and the age you want to retire and display the output as shown in the example
// that follows:
// 
// What is your current age? 25
// At what age would you like to retire? 65
// You have 40 years left until you can retire.
// It's 2015, so you can retire in 2055.

public class Exercise6 {
	int CurrentAge { get; set; }
	int RetirementAge { get; set; }

	public Exercise6() {
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

		CurrentAge = PromptInt("What is your current age? ");
		RetirementAge = PromptInt("At what age would you like to retire? ");
	}

	void PrintOutput() {
		int retirementYear = RetirementAge - CurrentAge;
		int currentYear = System.DateTime.Now.Year;

		System.Console.WriteLine();
		System.Console.WriteLine("===Output===");
		System.Console.WriteLine("You have {0} years left until you can retire.", retirementYear);
		System.Console.WriteLine("It's {0}, so you can retire in {1}.", currentYear, currentYear+retirementYear);		
	}
}
