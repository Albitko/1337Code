/*

Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.

Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.

Input: arr = [1,0,2,3,0,4,5,0]
Output: [1,0,0,2,3,0,0,4]
Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]

*/

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
      
      var zeroesPositions: [Int] = []
      var initialArrayLength: Int = arr.count
      
      // Find all zeroes in array and collect their indicies
      for index in 0..<arr.count{
        if arr[index] == 0 {
          zeroesPositions.append(index)
        }
      }
      // From biggest index add 0 
      for i in zeroesPositions.reversed(){
        arr.insert(0,at: i)
      }
      // Slice only needed size
      arr =  Array(arr[..<initialArrayLength])
      }
}
