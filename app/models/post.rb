class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_one_attached :image
  validates :body, presence: true 
  validates :title, presence: true

end
