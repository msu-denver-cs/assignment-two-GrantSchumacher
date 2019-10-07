require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "car attributes must not be empty" do
  	car = Car.new 
  	assert car.invalid?
  	assert car.errors[:make].any?
  	assert car.errors[:model].any?
  	assert car.errors[:year].any?
  	assert car.errors[:parts].any?
  end

  test "car year is greater than 1885 (year of first automobile)" do
  	car = Car.new
  	assert car.invalid?
  	assert car.errors[:year].any?
  	assert_operator car.year, :<, 1885 ["must be over 1885"]
  end
  	

end
