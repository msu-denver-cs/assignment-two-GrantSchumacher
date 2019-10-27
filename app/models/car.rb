class Car < ApplicationRecord
	has_and_belongs_to_many :parts
	belongs_to :cars_parts
	validates :make, :model, :vin, :year, presence: true
	validates :year, numericality: {greater_than_or_equal_to: 1885}

end
