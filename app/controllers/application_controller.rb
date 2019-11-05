class ApplicationController < ActionController::Base

    def signin
        @user.update(remember_token: new_remember_token)
        cookies.permanent[:remember_token] = @user.remember_token 
    end

    def new_remember_token
        token = SecureRandom.urlsafe_base64
        Digest::SHA1.hexdigest(token).to_s
    end
end
