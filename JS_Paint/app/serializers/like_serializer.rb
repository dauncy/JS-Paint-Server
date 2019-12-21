class LikeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user, :drawing
end
