class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :name
  has_many :drawings
  # has_many :challenges, through: :drawings
  has_many :likes
  
end
