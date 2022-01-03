class Post < ApplicationRecord
    belongs_to :user
    has_many :comment
    
    validates :title, :body, :user_id, presence: true
    validates :title, length: { in: 5..30 }
end
