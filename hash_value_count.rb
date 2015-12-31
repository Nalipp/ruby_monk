def do_nothing(hash)
  arr = []
  arr2 = []
  n = 0
  rv = hash.values.flatten
  while n < rv.length
    if rv[n].length > 4
      arr << rv[n]
    else
      arr2 << rv[n]
    end
    n += 1
  end
    p arr.length
    p arr2.length
end

robot = { greeting: ['hi', 'hello', 'how are you?'], personality: ['warm', 'cold', 'super great'], looks: ["handsom", "metal", "gray"]}
do_nothing(robot)
