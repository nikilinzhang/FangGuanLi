class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token, :reset_token
  before_save { self.email = email.downcase }
  validates_uniqueness_of :name, :email
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true
  validates :mobile, presence: true, length: { maximum: 50 }
  has_secure_password
  validates :password, presence: true, length: { in: 6..20 }

  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

end
