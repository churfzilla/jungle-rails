class User < ActiveRecord::Base


  def strip_whitespace
    self.email = self.email.strip unless self.email.nil?
  end

  before_validation :strip_whitespace, :only => [:email]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false }

  validates :password,  presence: true,
                        confirmation: true,
                        length: {within: 6..40}

  has_secure_password

end