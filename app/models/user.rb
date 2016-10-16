class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  validates_confirmation_of :password

  has_secure_password

end