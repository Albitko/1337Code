/*
Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.
Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. 
More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what
you leave beyond the first k elements.

Return k after placing the final result in the first k slots of nums.
Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

Input: nums = [0,1,2,2,3,0,4,2], val = 2
Output: 5, nums = [0,1,4,0,3,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
Note that the five elements can be returned in any order.
It does not matter what you leave beyond the returned k (hence they are underscores).

*/


class Solution {
  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    var lastElementIndex = nums.count - 1
    var numberOfVals = 0

    // Check guards [1] -> 2 or [2] -> 2
    if nums.count == 1 {
      if nums[lastElementIndex] == val {
        return 0
      } else {
        return 1
      }
    // Check []
    } else if nums.count == 0 {
      return 0
    // Check [1,2] -> 2
    } else if nums.count == 2 && nums[0] == val && nums[1] != val {
      var tmp = nums[1]
      nums[1] = nums[0]
      nums[0] = tmp
      return 1
    }

    // If on the end are some of target vals
    while nums[lastElementIndex] == val {
      //If all elemnts are vals return null
      if lastElementIndex == 0 {
        return 0
      }
      lastElementIndex -= 1
      numberOfVals += 1

    }

    var i = 0
    // Main loop for checking elemnts by val
    while i != lastElementIndex {
      
      if nums[i] == val {
        
        // If in progress of swapping happend sequence of target vals
        while nums[lastElementIndex] == val {
          //If all elemnts betveen i and end of sequence are vals
          if lastElementIndex == i {
            numberOfVals += 1
            return nums.count - numberOfVals
          }
          lastElementIndex -= 1
          numberOfVals += 1
        }
        
        // Swap elements
        var tmp = nums[lastElementIndex]
        nums[lastElementIndex] = nums[i]
        nums[i] = tmp
        lastElementIndex -= 1
        numberOfVals += 1

      }
      if lastElementIndex != i {
        i += 1
        // [2,2,3]
        if i == lastElementIndex && nums[i] == val {
          numberOfVals += 1
        }
      }
    }

    return nums.count - numberOfVals
  }
}
