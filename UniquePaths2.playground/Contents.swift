class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        
        var paths = obstacleGrid

         if (obstacleGrid[0][0] == 1) {
            return 0;
        }
        
         paths[0][0] = 1;
        
         for i in 1..<obstacleGrid.count {
            paths[i][0] = (paths[i][0] == 0 && paths[i-1][0] == 1) ? 1 : 0
        }
        
        for i in 1..<obstacleGrid[0].count {
            paths[0][i] =  (paths[0][i] == 0 && paths[0][i-1] == 1) ? 1 : 0
        }
        
        for i in 1..<obstacleGrid.count {
            for j in 1..<obstacleGrid[i].count {
                
                if paths[i][j] == 0 {
                    paths[i][j] = paths[i-1][j] + paths[i][j-1]
                } else {
                    paths[i][j] = 0
                }
                
            }
        }
        
        print(paths)
        
        return paths[obstacleGrid.count - 1][obstacleGrid[0].count - 1]
        
    }
}

//[[0,0,0],[0,1,0],[0,0,0]]
