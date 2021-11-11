class Article < ApplicationRecord
   has_many :comments

    validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }

  has_one_attached :image
end
