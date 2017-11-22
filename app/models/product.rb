class Product < ApplicationRecord
	belongs_to :category

	def as_json(options={})
		super(
			root: true,
			include: { category: { only: :description }}
		)
	end
end
