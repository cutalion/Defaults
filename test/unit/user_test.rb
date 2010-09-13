require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do

    user = User.new(:name => 'John')
    assert_equal User::DEFAULT_CONFIG, User.class_variable_get(:@@defaults)[:config]
    assert_equal user.config[:option], 'value'
    assert_equal user.name, "John_#{User::DEFAULT_CONFIG[:option]}"

  end
end
