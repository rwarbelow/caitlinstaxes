class User < ActiveRecord::Base
	attr_accessible :username, :password, :password_confirmation, :first_name, :last_name, :email
	has_secure_password
	validates :username, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true

end
