import UIKit

struct BattleShips {
    
    var ships: [[String]]
    
    mutating func getNumberofShips() -> Int {
        
        var numberOfShips = 0
        
        for (i, ship) in ships.enumerated() {
            for (j, _) in ship.enumerated() {
                numberOfShips += findShips(i, j)
            }
        }
        
        return numberOfShips
    }
    
    private mutating func findShips(_ i: Int, _ j: Int) -> Int {
        
        if i < 0 || i >= ships.count || j < 0 || j >= ships[i].count || ships[i][j] != "X" {
            return 0
        }
        
        ships[i][j] = "."
        
        findShips(i + 1, j)
        findShips(i - 1, j)
        findShips(i, j + 1)
        findShips(i, j - 1)
        return 1
        
    }
    
}

let ships = [["X",".",".","X"],[".",".",".","X"],[".","X",".","X"]]
var battleShips = BattleShips.init(ships: ships)
print(battleShips.getNumberofShips())
