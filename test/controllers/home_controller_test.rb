require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    sign_in users(:user)
    post user_session_url
  end


  test "get homepage" do
    get root_url
    assert_response :success 
  end
end