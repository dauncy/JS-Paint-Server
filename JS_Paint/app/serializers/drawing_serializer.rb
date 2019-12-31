class DrawingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user, :challenge, :image, :canvas_url
end
