=begin
#blocks

block1 = [1, 2, 3]
block1.each { |x| p x += 1 }

block.each do |x|
  puts x += 1
end
=end

=begin
#procs
proc1 = Proc.new { |n| p n += 1  }
arr = [4, 5, 6]
arr.each(&proc1)              # The '&' tells ruby to turn the proc into a block

proc = Proc.new { puts "Hello World" }
proc.call                     # The body of the Proc object gets executed when called
=end

#lambdas
=begin
lam1 = lambda { |i| i += 1 }
p [7, 8, 9].each(&lam1)

long_lam = lambda do |i|
  i += 1
end
puts long_lam.call(5)
=end

=begin
p = Proc.new { puts "Hello World" }

p.call
puts p.class
a = p

a.call
puts a.class
=end

=begin
def multiple_procs(proc1, proc2)
  proc1.call
  proc2.call
end

a = Proc.new {puts "first proc"}
b = Proc.new {puts "second proc"}

multiple_procs(a,b)
=end

=begin
lam = lambda { |x| puts x }    # creates a lambda that takes 1 argument
lam.call(2)                    # prints out 2
lam.call                       # ArgumentError: wrong number of arguments (0 for 1)
lam.call(1,2,3)                # ArgumentError: wrong number of arguments (3 for 1)
=end

=begin
proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
proc.call(2)                   # prints out 2
proc.call                      # returns nil
proc.call(1,2,3)               # prints out 1 and forgets about the extra arguments
=end

=begin
def counter
  n = 0
  return Proc.new { n+= 1 }
end

a = counter
a.call            # returns 1
a.call            # returns 2

b = counter
b.call            # returns 1

a.call            # returns 3
b.call            # returns 2
a.call            # returns 4
=end
