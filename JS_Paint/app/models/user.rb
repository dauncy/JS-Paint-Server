class User < ApplicationRecord
    has_many :drawings
    has_many :likes
    has_many :challenges, through: :drawings

    
    validates :username, presence: true, :uniqueness true
    validates :name, presence: true
   
end
