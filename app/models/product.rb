class Product < ApplicationRecord
	belongs_to :category
	has_many :stocks

	accepts_nested_attributes_for :stocks

	def as_json(options={})
		super(
			root: true,
			include: [:category, :stocks]
		)
	end
end
