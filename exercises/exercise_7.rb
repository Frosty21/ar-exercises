require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
# checks for name, revenu and apparel
puts "Enter new store name:"
@newstorename = gets.chomp
while @newstorename.length() < 3
	puts "must be more than 3 characters"
	@newstoremen = gets.chomp 
end 
puts "Enter new store revenue:"
@newstorevenue = gets.chomp.to_i
while @newstorevenue <= 0
	puts "Don't be silly, please enter a store revenue"  
 	@newstorevenue = gets.chomp.to_i
end
puts "Does new store have mens apparel? true or false:"
@newstoremen = gets.chomp
while @newstoremen != "true" && @newstoremen != "false"
	puts "Don't be silly, please enter mens apparel true or false?"  
 	@newstoremen = gets.chomp
end
puts "Does new store have womens apparel? true or false:"
@newstorewomen = gets.chomp
while @newstorewomen != "true" && @newstorewomen != "false"
	puts "Don't be silly, please enter womens apparel true or false?"  
 	@newstorewomen = gets.chomp
end

@newStore = Store.create(name: "#{@newstorename}", annual_revenue: "#{@newstorevenue}", mens_apparel: "#{@newstoremen}", womens_apparel: "#{@newstorewomen}" )
@newStore.errors.full_messages.each do |message|
  puts message
end