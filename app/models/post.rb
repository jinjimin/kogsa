class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :board_id, :announcement
  belongs_to :user
  belongs_to :board
end
