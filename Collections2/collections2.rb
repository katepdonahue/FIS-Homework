require 'debugger'
# Collections Practice
 
# Finish the first collections assignment if you haven't already.
 
# Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.
 
# These problems should get progressively more difficult.
 
# Return true if every element of the tools array starts with an "r" and false otherwise.
#   tools = ["ruby", "rspec", "rails"]
def starts_w_r(array)
  truth = 0
  array.each do |word|
    truth += 1 if word.downcase[0] == 'r'
  end
  truth == array.length
end
 
# Create a new array from the captain_planet array with all the elements that contain the letter "a".  
#   captain_planet = ["earth", "fire", "wind", "water", "heart"]
def contains_a(array)
  array.select { |elt| elt.include? 'a' }
end
 
# Identify the first element in the stuff array that begins with the letters "wa".
#  stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def first_wa(array)
  i = 0
  i += 1 until array[i][0..1] == "wa" 
  array[i]
end
 
# Identify all the elements in the stuff array that begins with the letters "wa".
 # stuff = ["candy", :pepper, "wall", :ball, "wacky"]
def all_wa(array)
  array.select { |elt| elt[0..1] == 'wa' }
end
 
# Remove anything that's not a string from an array.
# Hint: Use the method "class"  "blake".class
def only_s(array)
  array.select { |elt| elt.class == String }
end
 
# Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed types of objects inside it.
def third_letter(array, char)
  array.each do |elt|
    elt[2] = char if (elt.is_a? String) && (elt.length > 2)
  end
  array
end

# Count the number of times each word appears in a string and store that data in a hash that has the word as the key and the count as the value.
def count_words(string)
  hash = {}
  string.downcase.gsub(/[^a-z\s]/, "").split.each do |word|
    hash[word] ||= 0
    hash[word] += 1
  end
  hash
end

#   string = "the flatiron school is better than general assembly"
 
# Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each hash with the number of times it appears.
#   [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#     becomes
#   [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
def count_hash(array)
  nest_hash = {}
  new_array = []
  array.each do |hash|
    nest_hash[hash] ||= 0
    nest_hash[hash] += 1
  end
  nest_hash.each do |hash, count|
    new_array << {:name => hash[:name], :count => count}
  end
  new_array
end


# Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.
 
# [
#        {
#         :first_name => "blake"
#     },
#        {
#         :first_name => "ashley"
#     }
# ]
# and
# [
#        {
#          "blake" => {
#             :awesomeness => 10,
#                  :height => "74",
#               :last_name => "johnson"
#         },
#         "ashley" => {
#             :awesomeness => 9,
#                  :height => 60,
#               :last_name => "dubs"
#         }
#     }
# ]
 
# becomes
# [
#        {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson"
#     },
#        {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs"
#     }
# ]
def merge(arraya, arrayb)
  new_array =  []
  arraya.each do |hash|
    name = hash[:first_name]
    arrayb.each do |ugly_hash| 
      ugly_hash.each do |key, val_hash|
        if key == name
          hash[:awesomeness] = val_hash[:awesomeness] 
          hash[:height] = val_hash[:height]
          hash[:last_name] = val_hash[:last_name]
          new_array << hash
        end
      end
    end
  end
  new_array
end

# array1 = [{:first_name => "blake"}, {:first_name => "ashley"}]
# array2 = [{"blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"},"ashley" => {:awesomeness => 9, :height => 60, :last_name => "dubs"}}]
    
# puts merge(array1, array2)

 
# Return all hashes that have a value of "cool" for the :temperature key.
# [
#         {
#                :name => "ashley",
#         :temperature => "sort of cool"
#     },
#         {
#                :name => "blake",
#         :temperature => "cool"
#     }
# ]
def pull_hash(array, hash_key, hash_val)
  new_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end
 
# Convert the nested data structure from it's current structure
 
# {
#   "flatiron school bk" => {
#     :location => "NYC",
#     :price => "free"
#   },
#   "dev boot camp" => {
#     :location => "SF"
#     :price => "a million dollars"
#   },
#   "dev boot camp chicago" => {
#     :location => "Chicago",
#     :price => "half a million dollars"
#   },
#   "general assembly" => {
#     :location => "NYC",
#     :price => "too much"
#   },
#   "some school in SF" => {
#     :location => "SF",
#     :price => "your soul"
#   }
# }
# to a structure that organizes the schools by location.
def hash_by_location(hash_of_hash)
  hash_of_hash.each do |key, val_hash|
    hash_of_hash.sort_by { |key, val| val[:location]}
  end
end
