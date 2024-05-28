class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :posts
  validates :body, presence, true
  balidates :post, presence, true
end
