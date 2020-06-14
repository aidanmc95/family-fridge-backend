class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :fridges, :comments, :images
end
