def apple_picker(fruit)
  apples = []
  fruit.each do |x|
    if x == "apple"
      apples << x
    end
  end
  apples
end

puts apple_picker([2, 3, "apple", 4])
