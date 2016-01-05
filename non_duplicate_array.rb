def non_duplicated_values(values)
  values.select { |i| values.count(i) == 1 }
end

arr = [1,2,2,3,3,4,5]
p non_duplicated_values(arr)
