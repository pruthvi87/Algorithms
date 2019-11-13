class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        if m == 0 || n == 0 {
            return 0
        }
        
        var paths = Array(repeatElement(Array(repeatElement(0, count: n)), count: m))
        for i in 0..<m {
            paths[i][0] = 1
        }
        
        for i in 0..<n {
            paths[0][i] = 1
        }
        
        for i in 1..<m {
            for j in 1..<n {
                paths[i][j] = paths[i-1][j] + paths[i][j-1]
            }
        }
        
        return paths[m-1][n-1]
        
    }
}

// 3, 2
