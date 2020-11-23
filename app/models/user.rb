class User < ApplicationRecord
    has_many :posts
    has_many :comments, through: :posts
    has_many :likes, through: :posts

    has_secure_password

    validates :name, presence: true

    validates :age, presence: true

    validates :username, presence: true, uniqueness: { case_sensitive: true }

    validates :email, presence: true, uniqueness: { case_sensitive: false }

    validates :password, length: { minimum: 3, maximum: 20 }, allow_nil: true

end
