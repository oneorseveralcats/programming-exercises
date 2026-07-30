// Create a program that calculates the area of a room. Prompt the user for the
// length and width of the room in feet. Then display the area in both square
// feet and square meters.
//
// Example output:
// 
// What is the length of the room in feet? 15
// What is the width of the room in feet? 20
// You entered dimensions of 15 feet by 20 feet.
// The area is
// 300 square feet
// 27.871 square meters

public class Exercise7 {
	double Length { get; set; }
	double Width { get; set; }

	public Exercise7() {
		PromptDimensions();
		PrintOutput();
	}

	void PromptDimensions() {
		double PromptDouble(string prompt) {
			bool successfullyParsed;
			string input;
			double parsedInput; 
			do {
				System.Console.Write(prompt);
				input = System.Console.ReadLine();
				successfullyParsed = System.Double.TryParse(input, out parsedInput);
			} while (!successfullyParsed);

			return parsedInput;
		}

		Length = PromptDouble("Enter Length (ft): ");
		Width = PromptDouble("Enter Width (ft): ");
	}

	void PrintOutput() {
		double squareMeters = FeetToMeters(Length) * FeetToMeters(Width); 

		System.Console.WriteLine();
		System.Console.WriteLine("===Output===");
		System.Console.WriteLine("You entered dimensions of {0} feet by {1} feet.", Length, Width);
		System.Console.WriteLine("The area is:");
		System.Console.WriteLine("{0,10} square feet", (Length*Width));	
		System.Console.WriteLine("{0,10:0.0000} square meters", squareMeters);		
	}

	double FeetToMeters(double feet) {
		return feet / 3.28084d;		
	}
}
