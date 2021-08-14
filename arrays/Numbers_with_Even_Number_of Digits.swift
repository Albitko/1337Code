/*
 Input: nums = [12,345,2,6,7896]
 Output: 2
 
 Explanation:
 12 contains 2 digits (even number of digits).
 345 contains 3 digits (odd number of digits).
 2 contains 1 digit (odd number of digits).
 6 contains 1 digit (odd number of digits).
 7896 contains 4 digits (even number of digits).
 Therefore only 12 and 7896 contain an even number of digits.
*/


class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var countevenNumbers: Int = 0
  
        for number in nums{
            var num = number
            let numberCountDigits = getDigitNumbers(&num)
            if numberCountDigits % 2 == 0 {
                countevenNumbers += 1
            }
        }
        return countevenNumbers
    }
    
    // MARK:- Get number digits count
    func getDigitNumbers(_ number: inout Int) -> Int {
        var numberOfDigits = 0

        while number > 0 {
            number /= 10
            numberOfDigits += 1
        }
        
        return numberOfDigits
    }
}
