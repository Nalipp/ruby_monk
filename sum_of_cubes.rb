def sum_of_cubes(a, b)
  sum = (a..b).inject { |x, y| x + y}
  sum**2
end

p sum_of_cubes(3, 5)
