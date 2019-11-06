# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    @current_user = User.find_by(email: params[:session][:email].downcase)
    if @current_user&.authenticate(params[:session][:password])

      signin
      redirect_to root_path
    else
      render html: 'Not Loged in '
    end
  end

  def destroy
    signout if current_user
    redirect_to root_path
  end
end
