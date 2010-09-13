require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do

    user = User.new(:name => 'John')
    
    assert_equal user.config[:option], User::DEFAULT_CONFIG[:option]
    assert_equal user.name, "John_#{User::DEFAULT_CONFIG[:option]}"
  end
end
