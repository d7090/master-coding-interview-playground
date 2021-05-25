def two_sums(nums, target)
  search = {}
  nums.each_with_index do |num, i|
    return search[target - num], i unless search[target-num].nil?
    search[num] = i
  end
end


p two_sums([2,7,11,15], 9)
p two_sums([3,2,4], 6)
