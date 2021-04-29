
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //aproach 1 
        var arr = [Int]()
        for i in 0..<nums.count{
            var search = target - nums[i]
            for j in (i+1)..<nums.count{
                if search == nums[j]{
                    arr = [i,j]
                }
            } 
        }
        return arr
    }
}