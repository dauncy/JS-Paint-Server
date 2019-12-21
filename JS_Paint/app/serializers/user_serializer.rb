class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :name, :drawings
end
