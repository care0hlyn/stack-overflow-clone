class User < ActiveRecord::Base

  has_secure_password

  validates :name, :presence => true
  validates_uniqueness_of :email, :presence => { :on => :create }
  validates :password_confirmation, :presence => { :on => :create }

end
