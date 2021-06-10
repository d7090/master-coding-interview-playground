def merge_sorted_array(arr1, arr2)
  m = arr1.length
  n = arr2.length
  while m > 0 and n > 0
    if arr1[m-1] >= arr2[n-1]
      arr1[m+n-1] = arr1[m-1]
      m -= 1
    else
      arr1[m+n-1] = arr2[n-1]
      n -= 1
    end
  end
  if n > 0
    arr1[0...n] = arr2[0...n]
  end
  arr1
end  
p merge_sorted_array([0,3,4,31], [4,6,30]) == [0,3,4,4,6,30,31]
p merge_sorted_array([0,3,4,31], [4,6,30])

