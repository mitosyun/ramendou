class Post < ApplicationRecord
    has_one_attached :image
  belongs_to :member

  validates :store, presence: true
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }
end
