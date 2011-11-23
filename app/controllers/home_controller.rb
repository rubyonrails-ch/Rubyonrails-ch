class HomeController < ApplicationController
  
  # before_filter :authenticate_user!, only: [:protected]
  
  def index
    @users = User.all
  end
  
  def protected
  end
end
