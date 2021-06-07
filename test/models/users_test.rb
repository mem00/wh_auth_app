require 'test_helper'

class UsersTest < ActiveSupport::TestCase
  test "create user" do
    user = User.new
    user.email = "test@test.com"
    user.first_name = "test"
    user.last_name = "test"
    assert user.save!
  end

end