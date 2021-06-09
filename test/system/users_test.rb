require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "can sign up" do
    visit new_user_registration_path
    fill_in "First name", with: "User"
    fill_in "Last name", with: "Last"
    fill_in "Email", with: "user@last.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_on "Sign up"
    assert_text "User Last user@last.com"
  end

end