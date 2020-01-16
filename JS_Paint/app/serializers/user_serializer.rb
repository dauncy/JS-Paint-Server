class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :name, :drawings, :challenges
  has_many :drawings
  has_many :challenges, through: :drawings

 
  
end
