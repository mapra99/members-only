class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email:params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])

    signin 
      redirect_to root_path
    else
      render html: "Not Loged in "
    end
   
  end

  def destroy
    signout if current_user
    redirect_to root_path
  end
end
