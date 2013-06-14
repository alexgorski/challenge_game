class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :role, :password, :password_confirmation
  has_many :rosters
  has_many :leagues, :through => :rosters

  validates_uniqueness_of :email
  validates :name, :email, :presence => true

  
end
