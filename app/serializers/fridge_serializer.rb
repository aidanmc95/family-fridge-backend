class FridgeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :url, :users, :images
end
