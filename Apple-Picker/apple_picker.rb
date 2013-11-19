# def apple_picker(fruit)
#   apples = []
#   fruit.each do |x|
#     if x == "apple"
#       apples << x
#     end
#   end
#   apples
# end

# def apple_picker(fruit)
#   apples = []
#   fruit.collect do |x|
#     if x == "apple"
#       apples << x
#     end
#   end
#   apples
# end

def apple_picker(fruit)
  fruit.select { |x| x == "apple" }
end

puts apple_picker([2, 3, "apple", 4])



