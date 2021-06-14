#!/usr/bin/env ruby

# O(n^2) brute-force method
def brute_force(nums)
  nums[0].upto(nums.length - 1) do |i|
    nums[i+1].upto(nums.length - 1) do |j|
      if nums[i] == nums[j]
        return nums[i]
      end
    end
  end
end

# O(n) method
def better(nums)
  store = {}
  nums.each do |i|
    if store.include? nums[i]
      return nums[i]
    else
      store[nums[i]] = i
    end
  end
end


p brute_force([5,5,1,2,3,5,2,2,4])
p brute_force([2,1,1,2,3,5,1,2,4])
p better([5,5,1,2,3,5,2,2,4])
p better([2,1,1,2,3,5,1,2,4])
