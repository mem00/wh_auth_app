require 'test_helper'

class UsersTest < ActiveSupport::TestCase
  test "create user" do
    user = User.find_by_email("test@test.com")
    user.destroy! if user
    user = User.new
    user.email = "test@test.com"
    user.first_name = "test"
    user.last_name = "test"
    user.password = "123456"
    assert user.save!
    user.destroy
  end

end