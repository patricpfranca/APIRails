namespace :dev do
  desc "Populate"
  task setup: :environment do

  	categories = %w(Carro Moto Barco Avião)

  	categories.each do |category|
  		Category.create!(
  			description: category
  		)
  	end


  	25.times do |i|
  		Product.create!(
  			brand: Faker::Commerce.department(2, true),
  			name: Faker::Commerce.product_name,
  			description: Faker::Commerce.material,
  			amount: Faker::Commerce.price,
  			active: true,
  			category: Category.all.sample
  		)
  	end
  end

end
