class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, :email, :password, length: { in: 5..30 }
    validates :username, :email, uniqueness: true
end
