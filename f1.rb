
#All grocery sale and total price calculation
milk_single_price = 3.97
milk_bulk_quantity = 2
milk_bulk_price = 5.00
milk_bulk_discount = milk_single_price * milk_bulk_quantity - milk_bulk_price

bread_single_price = 2.17
bread_bulk_quantity = 3
bread_bulk_price = 6.00
bread_bulk_discount = bread_single_price * bread_bulk_quantity - bread_bulk_price

banana_single_price = 0.99

apple_single_price = 0.89


puts 'Please enter all the items purchased separated by a comma'
purchases = gets.split(',').map(&:strip)

milk_quantity = 0
bread_quantity = 0
banana_quantity = 0
apple_quantity = 0
#counting the number of each item in wishlist
for purchase in purchases
  if purchase == 'milk'
    milk_quantity = milk_quantity + 1
  end
  if purchase == 'bread'
    bread_quantity = bread_quantity + 1
  end
  if purchase == 'banana'
    banana_quantity = banana_quantity + 1
  end
  if purchase == 'apple'
    apple_quantity = apple_quantity + 1
  end
end


milk_no_sale_price = milk_quantity * milk_single_price
milk_sale_quantity = milk_quantity / milk_bulk_quantity
milk_sale_discount = milk_sale_quantity * milk_bulk_discount
milk_sale_price = milk_no_sale_price - milk_sale_discount

bread_no_sale_price = bread_quantity * bread_single_price
bread_sale_quantity = bread_quantity / bread_bulk_quantity
bread_sale_discount = bread_sale_quantity * bread_bulk_discount
bread_sale_price = bread_no_sale_price - bread_sale_discount

banana_no_sale_price = banana_quantity * banana_single_price

apple_no_sale_price = apple_quantity * apple_single_price

total_sale_price = milk_sale_price + bread_sale_price + banana_no_sale_price + apple_no_sale_price
total_no_sale_price = milk_no_sale_price + bread_no_sale_price + banana_no_sale_price + apple_no_sale_price

total_saving = total_no_sale_price - total_sale_price #total price - discounted price total 


puts
puts 'Item     Quantity      Price'
puts '--------------------------------------'
puts "Milk      #{milk_quantity}            $#{milk_sale_price.round(2)}"
puts "Bread     #{bread_quantity}           $#{bread_sale_price.round(2)}"
puts "Apple     #{apple_quantity}           $#{apple_no_sale_price.round(2)}"
puts "Banana     #{banana_quantity}          $#{banana_no_sale_price.round(2)}"
puts "Total price :#{total_sale_price.round(2)}"
puts "You saved $#{total_saving.round(2)} today."

