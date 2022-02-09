class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :username, :password_digest, presence: true
end
