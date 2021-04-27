/*
Given a binary array nums, return the maximum number of consecutive 1's in the array.
Input: nums = [1,1,0,1,1,1]
Output: 3
Input: nums = [1,0,1,1,0,1]
Output: 2
*/


class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var temp:Int = 0
        var max_count:Int = 0
        
        for value in nums{
            
            if(value == 1){
                temp += 1
                if(max_count < temp){
                    max_count = temp
                }
            }else{
                
                temp = 0
            }  
        }
        return max_count
    }
}