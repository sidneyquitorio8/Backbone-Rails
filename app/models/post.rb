class Post < ActiveRecord::Base
  attr_accessible :message, :title, :user_id
  belongs_to :user

  validates :title, :presence => true
  validates :message, :presence => true
end
