// Check if a String contains unique characters
// Time complexity O(n)
// Space complexity O(c) Where C is the unique characters in str.

func isUnique(_ str: String) -> Bool {
    // If we know the character set, we can have a condition to check str.count and return false if it's greater than the set.
    // For Example extended ASCII is 256. In Swift Strings are unicode, so, unless we know we are receiving a very specific format in the string
    // We can just do the validation.

    var characterCount = [String.Element: Int]()
    
    for character in str {
        if let _ = characterCount[character] {
            return false
        }
        else {
            characterCount[character] = 1
        }
    }

    return true
}

