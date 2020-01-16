class ChallengeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :img_src, :song_src
  has_many :drawings
  
end
