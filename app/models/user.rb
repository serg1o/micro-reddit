class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  #email is to be used as username
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
end
