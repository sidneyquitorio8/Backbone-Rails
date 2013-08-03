class User < ActiveRecord::Base
	has_many :posts

	attr_accessible :uid, :login

	def self.create_user(auth)
		User.create(uid: auth["uid"], login: auth["info"]["nickname"])
	end



end
