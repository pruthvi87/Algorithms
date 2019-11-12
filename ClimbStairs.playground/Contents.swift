class Solution {
    func climbStairs(_ n: Int) -> Int {
        
        if n == 1 {
            return 1
        }
        
        var steps = Array(repeating: 0, count: n + 1)
        steps[1] = 1
        steps[2] = 2
        
        if n < 3 {
            return steps[n]
        }
        
        for i in 3...n {
            steps[i] = steps[i-1] + steps[i-2]
        }
        
        
        return steps[n]
        
    }
}

print(Solution().climbStairs(3))

