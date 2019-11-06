module ApplicationHelper
  def current_user
    @user ||= User.find_by(remember_token: cookies.permanent[:remember_token])
  end
end
