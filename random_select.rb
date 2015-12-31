def random_select(array, n)
  rand_elements = []
  n.times do
    rand_elements << array[rand(array.length-1)]
  end
  rand_elements
end

arr = [1, 2, 3, 4, 5]

puts random_select(arr, 2)
