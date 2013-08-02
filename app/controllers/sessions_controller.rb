class SessionsController < ApplicationController

	def create
		#raise request.env["omniauth.auth"].to_yaml
		redirect_to root_url, :notice => "Signed in!"
	end

end
