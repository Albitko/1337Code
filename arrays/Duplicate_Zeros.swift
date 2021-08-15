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
