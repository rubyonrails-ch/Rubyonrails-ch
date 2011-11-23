class HomeController < ApplicationController
  
  # before_filter :authenticate_user!, only: [:protected]
  
  def index
    @users = User.all
    
    puts "---------------------- Rails warden user"
    pp request.env['warden'].user
    
  end
  
  def protected
    
  end
end
