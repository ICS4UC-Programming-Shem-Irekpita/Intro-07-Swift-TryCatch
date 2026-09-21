import Foundation

/**
 * This program asks the user for the radius of a sphere
 * and calculates the volume using error handling.
 *
 * - Author: Shem
 * - Version: 1.0
 * - Date: 2026-12-09
 */

// Welcome the user
print("Welcome to Shem's program")
print("Enter the radius of the sphere (cm): ", terminator: "")

// Read input from the command line
if let radString = readLine() {
    // Attempt to convert the string to a Double
    if let radDouble = Double(radString) {
        // Check if radius is negative
        if radDouble < 0 {
            print("The radius cannot be negative.")
        } else {
            // Calculate the volume of a sphere: (4/3) * pi * r^3
            let volume = (4.0 / 3.0) * Double.pi * pow(radDouble, 3)
            
            // Display the result formatted to 2 decimal places
            let formattedVolume = String(format: "%.2f", volume)
            print("The volume of a sphere with radius \(radString) cm is \(formattedVolume) cm^3.")
        }
    } else {
        // Triggered if Double(radString) returns nil (invalid input)
        print("Invalid input. Please enter a valid number.")
    }
}