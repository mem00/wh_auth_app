require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  test "visit customers admin index" do
    visit admin_customers_path
    assert_text "Users"
  end
end