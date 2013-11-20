# Instructions:
# Return an array that contains the squares of all elements in an array?
 
def square_array(some_array)
  some_array.collect do |x|
    x = x*x
  end
end