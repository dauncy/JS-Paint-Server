class ChallengeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :img_src
end
