class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
 
  layout "admin"
  
  def index
    @users = User.all
  end

  def impersonate
    bypass_sign_in(User.find(params[:id]))
    redirect_to root_path
  end

end