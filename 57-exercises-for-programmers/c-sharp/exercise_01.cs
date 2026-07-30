// Create a program that prompts for your name and prints a greeting using your
// name.

public class Exercise1 {
	string Name { get; set; }

	public Exercise1() {
		PromptName();
		PrintName();
	}

	void PromptName() {
		System.Console.Write("What's your name? ");
		Name = System.Console.ReadLine();
	}

	void PrintName() {
		System.Console.WriteLine("Hi, {0}!", Name);
	}
}
