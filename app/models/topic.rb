class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts
  accepts_nested_attributes_for :posts
  validates :subject, presence: true
end
