class DrawingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :canvas_url
  belongs_to :challenge
  belongs_to :user
end
