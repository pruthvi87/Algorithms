import UIKit

struct ZigZagStruct {
    var row : Int
    var character : Character
}

struct ZigZagSample {

    let zigZagStr = "PAYPALISRISING"
    var rowCount : Int
  
    
    init(rowCount : Int) {
        self.rowCount = rowCount
        getZigZagStr()
    }
    
    private func getZigZagStr() {
        var row = 0
        var down = true
        var zigZagArray = [ZigZagStruct]()
        
        for (_, ch) in zigZagStr.enumerated() {
            
            let str = ZigZagStruct.init(row: row, character: ch)
            zigZagArray.append(str)
            
            if row == rowCount - 1 {
                down = false
            } else if row == 0 {
                down = true
            }
            
            if down {
                row += 1
            } else {
                row -= 1
            }
        }
        
        var zigZagStrDisplay = ""
        
        let indexes = (0..<self.rowCount).map{ index in
            
            return zigZagArray.filter{$0.row == index}
            }.flatMap { return $0 }
        
        for z in indexes {
            zigZagStrDisplay += "\(z.character)"
        }
        
        print(zigZagStrDisplay)
    }
}

let zigZag = ZigZagSample(rowCount: 3)
