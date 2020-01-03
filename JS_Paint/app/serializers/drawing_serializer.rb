class DrawingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user, :challenge, :canvas_url
end
