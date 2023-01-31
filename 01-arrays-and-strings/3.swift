// Write a method to replace spaces with %20
// Time complexity O(n)
// Space complexity O(n)
import Foundation

func urlify(_ str: String) -> String {
    var stringToReturn = ""
    var str = str.trimmingCharacters(in: .whitespacesAndNewlines)

    for character in str {
        if character == " " {
            stringToReturn.append("%20")
        }
        else {
            stringToReturn.append(character)
        }
    }
    
    return stringToReturn
}