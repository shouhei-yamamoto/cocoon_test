class Blog < ApplicationRecord
  has_many :products, dependent: :destroy 
  has_many :product_urls, dependent: :destroy 
  accepts_nested_attributes_for :products, :product_urls, reject_if: :all_blank, allow_destroy: true
  validates :title, presence: true
  validates :content, presence: true
end
