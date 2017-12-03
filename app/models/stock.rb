class Stock < ApplicationRecord
  belongs_to :product, optional: true
end
