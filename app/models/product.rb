class Product < ApplicationRecord
  belongs_to :blog
  validates :price, presence: true
end
