=begin
Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.
Your algorithm's runtime complexity must be in the order of O(log n).
If the target is not found in the array, return [-1, -1].
Example 1:
Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
Example 2:
Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
=end

def search_range(nums, target)
  end_array = []
  nums.each_with_index do |num, index|
    end_array << index if num == target
  end
  return [-1, -1] if end_array.length == 0
  end_array
end



nums = [5,7,7,8,8,10]
p search_range(nums, 8)

nums2 =[5,7,7,8,8,10]
target = 6
p search_range(nums, 6)
