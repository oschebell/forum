class Forum < ActiveRecord::Base

  has_many :topics, dependent: :delete_all
  validates :title, presence: true
end
