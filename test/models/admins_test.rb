require 'test_helper'

class AdminsTest < ActiveSupport::TestCase
  test "create admin" do
    admin = Admin.new
    admin.email = "admin@test.com"
    admin.first_name = "admin"
    admin.last_name = "test"
    admin.password = "123456"
    assert admin.save!
  end

end