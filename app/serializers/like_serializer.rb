class LikeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user, :drawing
  belongs_to :user
  belongs_to :drawing
end
