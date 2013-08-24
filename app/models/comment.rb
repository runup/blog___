class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :two
  attr_accessible :comment,:user_id,:two_id
end
