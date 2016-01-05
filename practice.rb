=begin
def introduction(age, gender, *names)
  "Meet #{names.join(" ")}, who's #{age} and #{gender}"
end

age = "30"
gender = "Male"
names = ["Nate", "Nathanael", "Nathan"]
p introduction(age, gender, names)
=end

=begin
def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def add_with_message(message, *numbers)
  "#{message} : #{add(*numbers)}"
end

p add_with_message("The Sum is", 1, 2, 3)
=end

=begin
def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)
=end
