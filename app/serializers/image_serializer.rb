class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :url, :user, :name, :description, :fridge, :comments

  # attributes :url
  # belongs_to :user
  # belongs_to :fridge
  # has_many :comments
end
