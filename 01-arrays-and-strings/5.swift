// There are 3 operations that can be performed on a string. Remove a Character, ad a character or replace a character.
// Check if a and b are 0 or 1 edits away
// Time complexity O(min(a, b))
// Space complexity O(a + b)
private func checkForSubstitutions(_ a: [String.Element], _ b: [String.Element]) -> Bool {
    var replaceCount = 0
    
    for index in 0..<a.count {
        if a[index] != b[index] {
            if replaceCount > 0 {
                return false
            }
            replaceCount += 1
        }
    }
    
    return true
}

private func checkForRemovalsOrAdditions(_ a: [String.Element], _ b: [String.Element]) -> Bool {
    var index1 = 0
    var index2 = 0
    
    while index1 < a.count && index2 < b.count {
        if a[index1] != b[index2] {
            if index1 != index2 {
                return false
            }
            
            index2 += 1
        }
        else {
            index1 += 1
            index2 += 1
        }
    }
    
    return true
}

func oneWay(_ a: String, _ b: String) -> Bool {
    if a == b {
        return true
    }
    
    if a.count != b.count && min(a.count, b.count) + 1 < max(a.count, b.count) {
        return false
    }
    
    if a.count == b.count {
        return checkForSubstitutions(Array(a), Array(b))
    }
    else if a.count < b.count {
        return checkForRemovalsOrAdditions(Array(a), Array(b))
    }
    
    return checkForRemovalsOrAdditions(Array(b), Array(a))
}