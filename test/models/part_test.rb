require 'test_helper'

class PartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   test "part name must not be empty" do
  	part = Part.new 
  	assert part.invalid?
  	assert part.errors[:name].any?
  end
end
