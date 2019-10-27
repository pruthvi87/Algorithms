
func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var resultAnagram = [[String]]()
    
    var anagramDict = [String : [String]]()
    
    for ana in strs {
        let sortedAna = String(ana.sorted())
        let anaArray = anagramDict[sortedAna]
        if var array = anaArray {
             array.append(ana)
             anagramDict[sortedAna] = array
        }  else {
            anagramDict[sortedAna] = [ana]
        }
    }
    
    for result in anagramDict {
        resultAnagram.append(result.value)
    }
    
    return resultAnagram
}

groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])


