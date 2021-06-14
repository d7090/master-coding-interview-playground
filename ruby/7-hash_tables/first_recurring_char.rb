#!/usr/bin/env ruby
#
def first_recur(nums)
  store = {}
  0.upto(nums.length - 1) do |i|
    nums[i+1].upto(nums.length - 1) do |j|
      if nums[i] == nums[j]
        return nums[i]
      end
    end
  end


  return "none"
end




p first_recur([5,5,1,2,3,5,2,2,4])
p first_recur([2,1,1,2,3,5,1,2,4])
