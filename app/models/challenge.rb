class Challenge < ApplicationRecord
    has_many :drawings
    has_many :users, through: :drawings
    
end 