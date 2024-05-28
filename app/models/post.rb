class CreatePosts < ActiveRecord::Migration[6.0]
    def change
      create_table :posts do |t|
        t.string :title
        t.text :body
  
        t.timestamps
       end
    end
end
  
class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 45 }
    validates :body, presence: true, length: { maximum: 200 }
    belongs_to :user
end
