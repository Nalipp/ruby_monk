=begin
def even(num)
   total = num.inject([]) do |result_memo, element|
   result_memo  <<  element.to_s if element.length > 12
   result_memo
  end
end

arr = ["fish", "cars", "The best things", "Going home", "Mississippi"]
p even(arr)
=end
