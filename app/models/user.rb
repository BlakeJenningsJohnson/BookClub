class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email, :on => :create
  validates :username, presence: true, uniqueness: { case_sensitive: false }
end
