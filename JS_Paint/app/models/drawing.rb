class Drawing < ApplicationRecord
    has_many :likes
    belongs_to :challenge
    belongs_to :user 
    

    
end
