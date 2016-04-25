class Topic < ActiveRecord::Base
  belongs_to :forum
  belongs_to :author, class_name: "User"
  has_many :posts
  accepts_nested_attributes_for :posts
  validates :subject, presence: true
end
