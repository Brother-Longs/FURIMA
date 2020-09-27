class Product < ApplicationRecord
	has_many :images
  	belongs_to :customer, dependent: :destroy
  	belongs_to :category, dependent: :destroy
  	belongs_to :brand, dependent: :destroy
end
