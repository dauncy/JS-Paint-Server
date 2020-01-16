class Challenge < ApplicationRecord
    has_many :drawings
    has_many :users, through: :drawings
    accepts_nested_attributes_for :drawings
end 