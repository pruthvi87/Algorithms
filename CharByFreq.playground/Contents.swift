func frequencySort(_ s: String) -> String {
      
      var charDict = [Character : Int]()
      var returnString = ""
      
      for ch in s {
          let count = charDict[ch] ?? 0
          charDict[ch] = count + 1
      }
      
      let sortedChars = charDict.sorted(by: {return $0.value > $1.value})
      
      for sortedCh in sortedChars {
          let count = sortedCh.value
          for _ in 0..<count {
              returnString += String(sortedCh.key)
          }
      }
      
      return returnString
      
  }

frequencySort("tree")
