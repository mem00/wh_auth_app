require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/admins/sign_in'
    sign_in admins(:admin)
    post admin_session_url
  end


  test "get admin root" do
    get admin_root_url
    assert_response :success 
  end
  
end