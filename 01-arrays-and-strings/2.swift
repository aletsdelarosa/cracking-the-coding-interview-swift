// Check if one string is permutation of the other.

// Sorting strings
// Time complexity O(n log(n))
// Space complexity O(n) Because we cannot sort in place.
func isPermutation(_ a: String, _ b: String) -> Bool {
    if a.count != b.count {
        return false
    }

    let sortedA = a.sorted()
    let sortedB = b.sorted()

    for index in 0..<sortedA.count {
        if sortedA[index] != sortedB[index] {
            return false
        }
    }

    return true
}

// Counting characters in A. And then check count on B.
// Time complexity O(n)
// Space complexity O(c) Where C is the unique characters in a.
func isPermutation(_ a: String, _ b: String) -> Bool {
    if a.count != b.count {
        return false
    }
    
    var characterCount = [String.Element: Int]()
    
    for character in a {
        characterCount[character] = characterCount[character, default: 0] + 1
    }
    
    for character in b {
        if let count = characterCount[character], count > 0 {
            characterCount[character] = characterCount[character]! - 1
        }
        else {
            return false
        }
    }

    return true
}