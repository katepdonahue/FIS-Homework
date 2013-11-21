ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
          {"KALE" => {:price => 3.00,:clearance => false}},
          {"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
          {"ALMONDS" => {:price => 9.00, :clearance => false}},
          {"TEMPEH" => {:price => 3.00,:clearance => true}},
          {"CHEESE" => {:price => 6.50,:clearance => false}},
          {"BEER" => {:price => 13.00, :clearance => false}},
          {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
          {"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
          {:item=>"BEER", :num=>2, :cost=>20.00},
          {:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generateCart
  cart = []
  rand(20).times do
      cart.push(ITEMS.sample)  
  end
  cart
end

#randomly generates set of coupons
def generateCoups
  coups = []
  rand(2).times do
      coups.push(COUPS.sample)
  end
  coups
end

# def add_counter(cart_array)
#   cart_array.map do |item_hash|
#     item_hash[:count] = 1
#   end
#   cart_array
# end

# def count_cart(cart_with_count)
#   cart_array_copy = cart_with_count
#   cart_with_count.map do |item_hash|
#     cart_array_copy.each do |item_hash_copy|
#       if item_hash == item_hash_copy
#         item_hash[:count] += 1
#       end
#     end
#   end
#   cart_with_count.uniq
# end

def count_cart(cart_array)
  cart_hash = {}
  cart_array.each do |item_hash|
    item_hash.each do |item, info_hash| # only one key value pair in here
      if cart_hash[item].nil? # if it's not there, give it a count with value 1
        cart_hash[item] = info_hash
        cart_hash[item][:count] = 1
      else # if it is there, add one to the count
        cart_hash[item][:count] += 1
      end
    end
  end
  cart_hash
end


def cost_pre_discounts(cart_with_quant)
  cost = 0
  cart_with_quant.each do |item, info_hash|
    cost += info_hash[:count] * info_hash[:price]
  end
  cost
end

def apply_coupon_discount(cart_with_quant)
  cart_with_quant.map do |cart_item, info_hash|
    COUPS.each do |hash|
      if hash[:item] == cart_item
        cart_amt = info_hash[:count]
        while cart_amt >= hash[:num]
          # take away difference in price (reg price - coupon price)
          info_hash[:price] -= info_hash[:price] - (hash[:cost]/hash[:num])
          cart_amt -= hash[:num]
        end
      end
    end
  end
  cart_with_quant
end


# elf = count_cart([{"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}])
# puts elf



##the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
#   For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
#   it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
# ##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount
##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart