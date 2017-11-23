class Product < ApplicationRecord
	belongs_to :category
	has_many :stocks

	accepts_nested_attributes_for :stocks, allow_destroy: true

	def as_json(options={})
		super(
			root: true,
			include: [:category, :stocks]
		)
	end
end
