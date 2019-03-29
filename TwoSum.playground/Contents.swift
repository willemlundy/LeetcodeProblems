/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 In the Hash table we are going to add the value as the key and the index as the value
 
 Hash
 
 check if the compliment is in the array; no the array is empty;  add 2 to the array; next iteration
 [2, 7, 11, 15]     [:]
  i
 
 is 2 in the Array; Yes; Add the index of two to the resultArray; add the current index to the result array; return the result array
 [2, 7, 11, 15]     [2:1]
     i
 
 
*/

class Solutions {
    
    func twoSum(_ nums: [Int], target: Int) -> [Int] {
        
        var hash: [Int:Int] = [:]
        var resultArray: [Int] = []
        
        for (index, value) in nums.enumerated() {
            if let location = hash[target - value] {
                resultArray.append(location)
                resultArray.append(index)
                return resultArray
            }
            hash[value] = index
        }
        return resultArray
    }
}








