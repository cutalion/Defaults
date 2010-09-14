require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do

    user = User.new(:name => 'John')
    alex = User.new
    
    assert_equal user.config[:option], User::DEFAULT_CONFIG[:option]
    assert_equal user.name, "John_#{User::DEFAULT_CONFIG[:option]}"

    alex.name = 'Alex'
    assert_equal "Alex_#{User::DEFAULT_CONFIG[:option]}", alex.name
  end
end
