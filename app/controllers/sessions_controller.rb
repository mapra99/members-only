class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email:params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])

    signin 
      render html: "Loged in"
    else
      render html: "Not Loged in "
    end
   
  end
end
