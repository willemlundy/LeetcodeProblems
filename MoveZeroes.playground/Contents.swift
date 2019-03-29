/*
 
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 ---------------------------------------
 Diagram:
 
 [0,1,0,3,12] Start state; if i != 0 returns false
  i
  j
 
 [0,1,0,3,12] next iteration; if i != 0 swap; j++
    i
  j
 
 [1,0,0,3,12] i moves to next non zero; swap; j++
        i
    j
 
 [1,3,0,0,12] i moves to next non zero; swap; j++
           i
      j
 
 [1,3,12,0,0] complete; Array modified in place;
           i
         j
 */

import Foundation

class Solution {
    
    func moveZeroes(_ nums: inout [Int]) {
        
        guard nums.count > 1 else { return }
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                (nums[i], nums[j]) = (nums[j], nums[i])
                j += 1
            }
        }
        print(nums)
    }
}

var solution = Solution()

var testCaseArray = [0,1,0,3,12]
var testCaseArray1 = [5,1,0,3,12]
var testCaseArray2 = [0,1,0,0,12]


solution.moveZeroes(&testCaseArray)
solution.moveZeroes(&testCaseArray1)
solution.moveZeroes(&testCaseArray2)
