import UIKit

struct TwoSumClosest {
    
    private let target : Int
    private let firstArray : [Int]
    private let secondArray : [Int]
    
    init(_ arr1 : [Int], _ arr2 : [Int], _ target : Int) {
        firstArray = arr1
        secondArray = arr2
        self.target = target
        findClosestToTarget()
    }
    
    private func findClosestToTarget() {
        
        var closestMatch = [Int]()
        
        var closestToTarget = abs(self.target - (firstArray.first! + secondArray.first!))
        
        for ele in firstArray {
            
            for secondEle in secondArray {
                
                let targ = secondEle + ele
                let targDiff = abs(self.target - targ)
                
                if targDiff <= closestToTarget {
                    
                    print(closestToTarget)
                    closestToTarget = targDiff
                    closestMatch.removeAll()
                    closestMatch.append(ele)
                    closestMatch.append(secondEle)
                }
            
            }
        }
        
        
        print(closestMatch)
        
    }
    
}

let arr1 = [3, 7, 9]
let arr2 = [9, 19, 24]
let target = 30

TwoSumClosest(arr1, arr2, target)

