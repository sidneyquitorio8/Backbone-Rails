class Post < ActiveRecord::Base
  attr_accessible :message, :title, :user_id

  validates :title, :presence => true
  validates :message, :presence => true
end
