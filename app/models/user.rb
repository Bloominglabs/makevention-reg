class User < ActiveRecord::Base
  validates :username, presence: true, length: {minimum: 4}
  has_secure_password
#  validates :password, presence: true, length: {minimum: 4}
  validates :password, :confirmation => true
  validates :password_confirmation, :presence => true
  belongs_to :person, autosave: true
#  accepts_nested_attributes_for :person
  before_save { self.username = username.downcase }
  before_create :create_remember_token
  accepts_nested_attributes_for :person

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

private
  def create_remember_token
    self.password = User.encrypt(User.new_remember_token)
  end

end
