class SessionsController < ApplicationController

	def create
		auth = request.env["omniauth.auth"]
		#raise request.env["omniauth.auth"].to_yaml
		user = User.where(uid: auth["uid"]).first || User.create_user(auth)
		session[:user_id] = user.id
		redirect_to root_url
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end

end
