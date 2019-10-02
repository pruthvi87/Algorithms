import UIKit

struct LongestPalinString {
    
    var palinString : String
    
    init(str : String) {
        self.palinString = str
        printLongestPalinString()
    }
    
    private func printLongestPalinString() {
        
        var maxLength = 0
        var start = 0
        
        for (index, _) in palinString.enumerated() {
            
             // Even palin
            var high = index
            var low = index - 1
            
            while (low >= 0 && high < palinString.count && palinString[palinString.index(palinString.startIndex, offsetBy: high)] == palinString[palinString.index(palinString.startIndex, offsetBy: low)]) {
                if high - low + 1 > maxLength {
                    start = low
                    maxLength = high - low + 1
                }
                low -= 1
                high += 1
            }
            
            //Odd Palin
            high = index + 1
            low = index - 1
            
            while (low >= 0 && high < palinString.count && palinString[palinString.index(palinString.startIndex, offsetBy: high)] == palinString[palinString.index(palinString.startIndex, offsetBy: low)]) {
                if high - low + 1 > maxLength {
                    start = low
                    maxLength = high - low + 1
                }
                low -= 1
                high += 1
            }
            
        }
        
        print("\(start) and \(maxLength)")
        
        let palinStartIndex = palinString.index(palinString.startIndex, offsetBy: start)
        let palinEndIndex = palinString.index(palinStartIndex, offsetBy: maxLength)
        let range = palinStartIndex..<palinEndIndex
        print(palinString[range])
    }
    
}

var palinSStruct = LongestPalinString.init(str: "malayalam")
