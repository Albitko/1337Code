/*
Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

Input: nums = [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Explanation: After squaring, the array becomes [16,1,0,9,100].
After sorting, it becomes [0,1,9,16,100].
*/

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var squaredArrayNumbers: [Int] = []
  
          for number in nums{
            squaredArrayNumbers.append(number * number)
          }

        let result = squaredArrayNumbers.sorted(by: <)

        return result
    }
}
