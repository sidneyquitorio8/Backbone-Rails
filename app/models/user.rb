class User < ActiveRecord::Base

	attr_accessible :uid, :login

	def self.create_user(auth)
		# create! do |user|
		# 	user.uid = auth["uid"]
		# 	user.login = auth["info"]["nickname"]
		# end
		User.create(uid: auth["uid"], login: auth["info"]["nickname"])
	end



end
