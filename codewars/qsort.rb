def quicksort(ary)
  return ary if ary.size <= 1

  pivot = ary[0]
  pivots = ary.select { |x| x == pivot }
  less = ary.select { |x| x < pivot }
  greater = ary.select { |x| x > pivot }
  quicksort(less) + pivots + quicksort(greater)
end

p quicksort([10, 5, 2, 2, 2, 3])
p quicksort([44, 66, 21, 2, 4, 89, 55, 78, 63])
