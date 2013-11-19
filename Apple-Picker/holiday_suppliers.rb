holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# How would you access the second supply for the forth_of_july? ex: holiday_supplies[:spring][:memorial_day][0]
holiday_supplies[:summer][:fourth_of_july][1]

# Add a supply to a Winter holiday.
holiday_supplies[:winter][:new_years] << "Confetti"

# Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "Fruit Salad"

# Add a new holiday to any season with supplies.
holiday_supplies[:fall][:halloween] = ["Costumes", "Candy", "Dry Ice"]

# Write a method to collect all Winter supplies from all the winter holidays. ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]
def winter_supplies(holiday_supplies_hash)
  supplies = []
  holiday_supplies_hash[:winter].each do |holiday, supplies_array|
    supplies << supplies_array
  end
  supplies
end

# Write a loop to list out all the supplies you have for each holiday and the season.
# Output:
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
def print_info(holiday_supplies_hash)
  holiday_supplies_hash.each do |season, holidays_hash|
    puts season.to_s.capitalize + ":"
    holidays_hash.each do |holiday, supplies_array|
      puts "  #{holiday.to_s.capitalize}: #{supplies_array.join(" and ")}"
    end
  end
end

print_info(holiday_supplies)

# Write a method to collect all holidays with BBQ.
# holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]

def holidays_with_bbqs(holiday_supplies_hash)
  yes_bbq = []
  holiday_supplies_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supplies_array|
      if supplies_array.include? "BBQ"
        yes_bbq << holiday
      end
    end
  end
  yes_bbq
end

      





