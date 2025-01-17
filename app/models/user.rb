class User < ApplicationRecord
    validates :username, presence: true,
    uniqueness: true, length: {maximum:25}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  has_many :posts
  has_many :comments
end
