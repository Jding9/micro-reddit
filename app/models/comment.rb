class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, length: { in: 5..60 }
  validates :user_id, :post_id, presence: true
end
