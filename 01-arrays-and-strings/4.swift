// Palindrome permutation
// Check if string is a palindrome permutation.
// Time complexity O(n)
// Space complexity O(n)
func palindromePermutation(_ str: String) -> Bool {
    var characterCount: [String.Element: Int] = ["a": 0, "b": 0, "c": 0, "d": 0, "e": 0, "f": 0, "g": 0, "h": 0, "i": 0, "j": 0, "k": 0, "l": 0, "m": 0,
                          "n": 0, "o": 0, "p": 0, "q": 0, "r": 0, "s": 0, "t": 0, "u": 0, "v": 0, "w": 0, "x": 0, "y": 0, "z": 0]

    var lowecasedStr = str.lowercased()

    for character in lowecasedStr {
        if let _ = characterCount[character] {
            characterCount[character]! += 1
        }
    }

    var hasOddCount = false

    for key in characterCount.keys {
        if let count = characterCount[key], !count.isMultiple(of: 2) {
            if hasOddCount {
                return false
            }
            else {
                hasOddCount = true
            }
        }
    }

    return true
}