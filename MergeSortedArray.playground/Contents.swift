class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        nums1 = (nums1[0..<m] + nums2[0..<n]).sorted(by: { return $0 < $1})
    }
}

/*
 [1,2,3,0,0,0]
 3
 [2,5,6]
 3
 */
