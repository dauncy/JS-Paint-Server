class DrawingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :canvas_url
  has_many :likes
  belongs_to :challenge
  belongs_to :user
end
