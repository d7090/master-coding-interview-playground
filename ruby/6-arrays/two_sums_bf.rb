#brute force
# time: O(n^2)
# space: O(n)

def two_sums(nums, target)
  0.upto(nums.length) do |i|
    1.upto(nums.length) do |j|
      if nums[i] + nums[j] == target
        return [i,j]
      end
    end
  end
end

p two_sums([2,7,11,15], 9)
p two_sums([3,2,4], 6)
