# Simpler method to understand
# time: O(n)
# space: O(n)

def two_sums(nums, target)
  store = {}
  nums.each_with_index do |n, i|
    if store.include? n
      return [store[n], i]
    end
    store[target - n] = i
  end
end

p two_sums([2,7,11,15], 9)
p two_sums([3,2,4], 6)
