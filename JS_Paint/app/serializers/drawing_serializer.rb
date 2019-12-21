class DrawingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user, :challenge
end
