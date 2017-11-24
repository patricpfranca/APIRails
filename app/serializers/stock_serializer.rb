class StockSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :quantity_minimum, :location_street, :location_block
end
