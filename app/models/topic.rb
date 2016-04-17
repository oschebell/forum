class Topic < ActiveRecord::Base
  belongs_to :forum
  validates :subject, presence: true
end
