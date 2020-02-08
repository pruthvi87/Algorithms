import Foundation

struct IntToRoman {
    
    let mappings = [[1000: "M"],[900: "CM"], [500: "D"],[400: "CD"],[100: "C"], [90: "XC"],[50: "L"],[40: "XL"], [10: "X"],[9: "IX"], [5: "V"], [1: "I"]]
    let reverseMapping = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    let exceptions = [900: "CM", 400: "CD", 90: "XC", 40: "XL", 9: "IX", 4: "IV"]
    
    func romanToInt(_ num: Int) -> String {
           
        var romanNumeral = ""
        var numToConvert = num
                
        while numToConvert > 0 {
            
            for (_, val) in mappings.enumerated() {
                
               if let key = val.keys.first {
                   let romanNumeralVal = numToConvert / key
                   
                   for _ in 0 ..< romanNumeralVal {
                       romanNumeral += val.values.first!
                   }
                   
                   numToConvert = numToConvert - (key * romanNumeralVal)
                }
            }
        }
        
        return romanNumeral
    }
    
    func intToRoman(_ str: String) -> Int {
        
        var numInRoman = 0
        var strToMaipulate = str
        
        for (_, excStr) in exceptions.enumerated() {
            
            if strToMaipulate.contains(excStr.value) {
                if let range = strToMaipulate.range(of: excStr.value) {
                    strToMaipulate.removeSubrange(range)
                    numInRoman += excStr.key
                }
            }
        }
        
        for char in strToMaipulate {
            let charStr = String(char)
            numInRoman += reverseMapping[charStr] ?? 0
        }
        
        return numInRoman
    }
    
}


print(IntToRoman().romanToInt(2019))

print(IntToRoman().intToRoman("IV"))
