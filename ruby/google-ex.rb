#!/usr/bin/env ruby
require 'set'

# quadratic solution
def has_pair_with_sum_quadratic(array1, sum)
  0.upto(array1.length - 1) do |n|
    0.upto(array1.length - 1) do |i|
      if array1[i] + array1[n] == sum and n != i
        return true
      end
    end
  end

  false
end

def has_pair_with_sum_ordered(arr, sum)
  left_p = 0
  right_p = arr.length - 1
  while left_p < right_p
      return true if arr[left_p] + arr[right_p] == sum
      right_p -= 1 if arr[right_p] + arr[left_p] > sum
      left_p += 1 if arr[left_p] + arr[right_p] < sum
  end

  false
end

def has_pair_with_sum_unordered(arr, sum)
  complements = Set.new
  0.upto(arr.length - 1) do |i|
    value = arr[i]
    complement = sum - value
    if complements.include?(value)
      return true
    else
      complements.add(complement)
    end
  end
  false
end

l1 = [4,4,3,7]

print has_pair_with_sum_quadratic(l1, 8)
print has_pair_with_sum_ordered(l1, 8)
print has_pair_with_sum_unordered(l1, 8)
