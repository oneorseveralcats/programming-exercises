// Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
// and an adjective and injects those into a story that you create.

public class Exercise4 {
 	string Noun { get; set; }
 	string Verb { get; set; }
 	string Adjective { get; set; }
 	string Adverb { get; set; }

	public Exercise4() {
		PromptInputs();
		PrintOutput();
	}

	void PromptInputs() {
		System.Console.Write("Enter a noun: ");
		Noun = System.Console.ReadLine();
		
		System.Console.Write("Enter a verb: ");
		Verb = System.Console.ReadLine();
		
		System.Console.Write("Enter a adjective: ");
		Adjective = System.Console.ReadLine();
		
		System.Console.Write("Enter a adverb: ");
		Adverb = System.Console.ReadLine();
	}

	void PrintOutput() {
		System.Console.WriteLine("Do you {0} your {1} {2} {3}? That's hilarious!", Verb, Adjective, Noun, Adverb);
	}
}

