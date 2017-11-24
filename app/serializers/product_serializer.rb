class ProductSerializer < ActiveModel::Serializer
  belongs_to :category
	has_many :stocks
  
  attributes :id, :brand, :name, :description, :active, :amount
end
