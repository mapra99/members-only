class User < ApplicationRecord
  has_secure_password

  before_create :assign_remember_token

  private

  def assign_remember_token
    token = SecureRandom.urlsafe_base64
    token_digest = Digest::SHA1.hexdigest(token).to_s
    self.remember_token = token_digest
  end
end
