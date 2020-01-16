class User < ApplicationRecord
    has_many :drawings
    has_many :likes
    has_many :challenges, through: :drawings
    accepts_nested_attributes_for :drawings, allow_destroy: true
    
    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
   
end
