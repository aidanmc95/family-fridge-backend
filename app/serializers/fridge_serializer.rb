class FridgeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :url, :name, :users, :images, :comments
end
