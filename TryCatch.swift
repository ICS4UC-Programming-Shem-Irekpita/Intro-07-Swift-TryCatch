import Foundation

/**
This program asks the user for the radius of a circle 
and tells the area.
- Author: Shem
- Version: 1.0
- Since: 2026-12-09
 */
public enum TryCatch {
    
    /// This is the main method.
    public static func main() {
        // Welcome the user
        print("Welcome to Shem's program")
        print("Enter the radius of the circle (cm): ", terminator: "")

        // Read input from the user
        guard let radString = readLine() else {
            return
        }
    
        // Attempt to convert the string to a Double
        if let radDouble = Double(radString) {
            // If radius is negative, tell the user 
            if radDouble < 0 {
                print("The radius cannot be negative.")
            } else {
                // Calculate the area 
                let area = Double.pi * pow(radDouble, 2)

                // Display the area, rounded to 2 decimal places
                let formattedArea = String(format: "%.2f", area)
                print("The area of a circle with radius, \(radString)cm, is \(formattedArea)cm^2.")
            }
        } else {
            // Replicates Java's catch block for invalid numeric input
            print("Please enter a valid radius. Could not parse '\(radString)' as Double.")
        }
    }
}

// Execute the main method
TryCatch.main()