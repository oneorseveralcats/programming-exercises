// Create a program that prompts for an input string and displays output that
// shows the input string and the number of characters the string contains.

public class Exercise2 {
	string String { get; set; }

	public Exercise2() {
		PromptString();
		PrintStringAndLength();
	}

	void PromptString() {
		System.Console.Write("Enter String: ");
		String = System.Console.ReadLine();
	}

	void PrintStringAndLength() {
		System.Console.WriteLine();
		System.Console.WriteLine("===Output===");
		System.Console.WriteLine("String \"{0}\" has {1} characters.", String, String.Length);
	}
}


