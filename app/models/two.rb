class Two < ActiveRecord::Base
  belongs_to :user
  has_many :comments,:dependent => :destroy
  attr_accessible :content, :title
end
