class Car < ApplicationRecord
	has_many :parts
	belongs_to :cars_parts, :optional => true

end
