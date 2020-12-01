class User < ApplicationRecord
    has_many :posts
    has_many :comments, through: :posts
    has_many :likes, through: :posts

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Followership'
    has_many :followees, through: :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Followership'
    has_many :followers, through: :following_users

    has_secure_password

    validates :name, presence: true
    validates :age, presence: true

    validates :username, presence: true, uniqueness: { case_sensitive: true }
    validates :email, presence: true, uniqueness: { case_sensitive: false }

    validates :password, length: { minimum: 3, maximum: 20 }, allow_nil: true

end
