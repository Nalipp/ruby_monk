def sort_string(string)
  split_str = string.split(" ")
  sort_str = split_str.sort_by {|i| i.length}
  sort_str.join(" ")
end

str = "It's a sunny winter day"
sort_string(str)
