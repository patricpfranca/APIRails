namespace :dev do
  desc "Populate"
  task setup: :environment do

  	categories = %w(Carro Moto Barco Avião)

  	categories.each do |category|
  		Category.create!(
  			description: category
  		)
  	end

  # 	25.times do |i|
  # 		Product.create!(
  # 			brand: Faker::Commerce.department(2, true),
  # 			name: Faker::Commerce.product_name,
  # 			description: Faker::Commerce.material,
  # 			amount: Faker::Commerce.price,
  # 			active: true,
  # 			category: Category.all.sample
  # 		)
		# end
		
		# Product.all.each do |product|
		# 	Random.rand(5).times do |i|
		# 		stock = Stock.create!(
		# 			quantity: Faker::Number.between(1, 30),
		# 			quantity_minimum: 2,
		# 			location_street: Faker::Address.state_abbr,
		# 			location_block: Faker::Number.digit
		# 		)
		# 		product.stocks << stock
		# 		product.save
		# 	end
  # 	end
	end
end