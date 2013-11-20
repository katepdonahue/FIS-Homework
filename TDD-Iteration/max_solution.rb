# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class
 
# def maximum(arr)
#   biggest = arr[0]
#   arr.each do |element|
#     if element > biggest
#       biggest = element
#     end
#   end
#     biggest
# end
 
 
# now rewrite this as a method on the array class
class Array
  def maximum
    biggest = self[0]
    self.each do |element|
      if element > biggest
        biggest = element
      end
    end
    biggest
  end
end
