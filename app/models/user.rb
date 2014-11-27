class User < ActiveRecord::Base
	has_secure_password
	has_many :reviews
	validates :email, presence: true

	def full_name
		"#{firstname} #{lastname}"
	end
end
