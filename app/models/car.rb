class Car < ApplicationRecord
	has_many :parts
	belongs_to :cars_parts

	validates :make, :model, :vin, :year, presence: true

end
