class ProductUrl < ApplicationRecord
  belongs_to :blog
  validates :price_url, presence: true
end
