// Write a program to evenly divide pizzas. Prompt for the number of people, the
// number of pizzas, and the number of slices per pizza. Ensure that the number
// of pieces comes out even. Display the number of pieces of pizza each person
// should get. If there are leftovers, show the number of leftover pieces.
//
// Sample output:
//
// How many people? 8
// How many pizzas do you have? 2
//
// 8 people with 2 pizzas
// Each person gets 2 pieces of pizza.
// There are 0 leftover pieces.

public class Exercise8 {
	int People { get; set; }
	int Pizzas { get; set; }
	int SlicesOfPizza { get; set; }

	public Exercise8() {
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

		People = PromptInt("How many people? ");
		Pizzas = PromptInt("How many pizzas do you have? ");
		SlicesOfPizza = PromptInt("How many slices per pizza? ");
	}

	void PrintOutput() {
		int piecesPerPerson = Pizzas * SlicesOfPizza / People;
		int leftoverPieces = Pizzas * SlicesOfPizza % People;

		System.Console.WriteLine();
		System.Console.WriteLine("===Output===");
		System.Console.WriteLine("{0} people with {1} pizzas", People, Pizzas);
	 	System.Console.WriteLine("Each person gets {0} pieces of pizza.", piecesPerPerson);
	 	System.Console.WriteLine("There are {0} leftover pieces.", leftoverPieces);
	}
	
}
