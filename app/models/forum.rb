class Forum < ActiveRecord::Base

  has_many :topics
  validates :title, presence: true
end
