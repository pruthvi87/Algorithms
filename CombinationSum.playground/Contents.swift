import UIKit

class RecSolution {
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var candidate = [Int]()
        
        backtracking(&result, &candidate, candidates.sorted(), target, 0)
        
        return result
    }
    
    private func backtracking(_ result: inout [[Int]], _ candidate: inout [Int], _ inputs: [Int], _ remain: Int, _ start: Int) {
        if remain < 0 {
            return
        } else if remain == 0 {
            result.append(candidate)
        } else {
            for i in start..<inputs.count {
                
                candidate.append(inputs[i])
                backtracking(&result, &candidate, inputs, remain - inputs[i], i)
                candidate.removeLast()
            }
        }
    }
}

var targetComb = [2,3, 6, 7]
let targ = 7

RecSolution().combinationSum(targetComb, targ)

