class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        
        var result = [[Int]]()
        var candidate = [Int]()
        dfs(&result, &candidate, nums, 0)
        return result
        
    }
    
    private func dfs(_ result: inout [[Int]], _ candidate: inout [Int], _ nums: [Int], _ count: Int) {
        
        if !result.contains(candidate.sorted()) { result.append(candidate.sorted())}
        
        if nums.count == count {
            return
        }
        
        for i in count..<nums.count {
            candidate.append(nums[i])
            dfs(&result, &candidate, nums, i + 1)
            candidate.removeLast()
        }
    }
}

//[4,4,4,1,4]
