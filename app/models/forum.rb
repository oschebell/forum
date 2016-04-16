class Forum < ActiveRecord::Base
  validates :title, presence: true
end
