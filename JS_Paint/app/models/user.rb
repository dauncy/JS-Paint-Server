class User < ApplicationRecord
    has_many :drawings
    has_many :likes
    has_many :challenges, through: :drawings

    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..15 }
    validates :age, presence: true, numericality: { only_integer: true }
    validates :email, presence: true
    validates :country, presence: true
    validates :bio, presence: true, length: { maximum: 300 }
end
