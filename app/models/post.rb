class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  validates :views, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  has_many :comments, dependent: :destroy
end
