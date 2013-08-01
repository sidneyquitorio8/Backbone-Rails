class Post < ActiveRecord::Base
  attr_accessible :message, :title, :user_id
end
