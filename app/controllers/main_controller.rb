class MainController < ApplicationController

  def index
  	unless current_user.present?
  		redirect_to '/landing'
  	end
  end

  def landing
  end
  
end
