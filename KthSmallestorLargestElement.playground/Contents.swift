import UIKit

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var numbers = nums
    return partition(&numbers, 0, numbers.count - 1, k - 1)
}

func partition(_ nums: inout [Int], _ start: Int, _ end:  Int, _ targetIndex: Int) -> Int{
       var low = start
       var high = end
       let key = nums[low]
        print("Initial items \(nums)")
        print("Key is \(key)")
       while low < high {
           while low < high && nums[high] < key {
               high -= 1
           }
           nums.swapAt(low, high)
           print("\(low) and \(high) \(nums)")
           while low < high && nums[low] >= key {
               low += 1
           }
           nums.swapAt(low, high)
          print("\(low) and \(high) \(nums)")
       }
    
       if targetIndex > low  {
           return partition(&nums, low + 1, end, targetIndex)
       } else if targetIndex < low {
           return partition(&nums, start, low - 1, targetIndex)
       } else {
           return key
       }
}

var arrayElements = [10, 18, 16, 14, 4, 5, 8, 6, 11, 9, 8, 2, 26]

print(findKthLargest(arrayElements, 3))
