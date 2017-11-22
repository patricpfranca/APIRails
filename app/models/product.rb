class Product < ApplicationRecord
	belongs_to :category
	has_many :stocks

	def as_json(options={})
		super(
			root: true,
			include: { category: { only: :description }}
		)
	end
end
