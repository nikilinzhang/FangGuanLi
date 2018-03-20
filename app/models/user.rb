class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :mobile, presence: true, length: { maximum: 50 }
  has_secure_password
  validates :password, presence: true, length: { in: 6..20 }
end
