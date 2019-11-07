# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def signin
    @current_user.update(remember_token: new_remember_token)
    cookies.permanent[:remember_token] = @current_user.remember_token
  end

  def new_remember_token
    token = SecureRandom.urlsafe_base64
    Digest::SHA1.hexdigest(token).to_s
  end

  def current_user
    @current_user ||= User.find_by(remember_token: cookies.permanent[:remember_token])
  end

  def signout
    @current_user = nil
    cookies.delete :remember_token
  end
end
