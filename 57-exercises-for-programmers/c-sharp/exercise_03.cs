// Create a program that prompts for a quote and an author. Display the
// quotation and author as shown in the example output.

public class Exercise3 {
	string Author {get; set; }
	string Quote { get; set; }

	public Exercise3 () {
		PromptQuote();
		PromptAuthor();
		PrintQuote();
	}

	void PromptQuote() {
		System.Console.Write("What's the quote? ");
		Quote = System.Console.ReadLine();
	}

	void PromptAuthor() {
		System.Console.Write("Who's the author? ");
		Author = System.Console.ReadLine();
	}

	void PrintQuote() {
		System.Console.WriteLine();
		System.Console.WriteLine("===Output===");
		System.Console.WriteLine("{0} says, \"{1}\"", Author, Quote);
	}
}
