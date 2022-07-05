class Post < ApplicationRecord
  validates :title, length: { maximum: 50 }, presence: true
  validates :body, length: { maximum: 280 }, presence: true

  belongs_to :user
end
