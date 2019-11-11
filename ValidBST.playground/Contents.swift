/**
 * Definition for a binary tree node.
 **/
  public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
      }
  }
 
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validateTree(root, min: nil, max: nil)
    }
    
    private func validateTree(_ root: TreeNode?, min: Int?, max: Int?) -> Bool {
        
        guard let root = root else {return true}
        if let min = min, root.val >= min  {return false}
        if let max = max, root.val <= max  {return false}
        
        
        return validateTree(root.left, min: root.val, max: max) && validateTree(root.right, min: min, max: root.val)
    }
}
