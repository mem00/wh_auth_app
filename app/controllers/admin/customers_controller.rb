class Admin::CustomersController < ApplicationController

  def index
    @users = User.all
  end

end