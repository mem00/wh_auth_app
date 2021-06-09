require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  test "customers admin index takes you to log in" do
    visit admin_customers_path
    assert_text "Log in"
  end

end