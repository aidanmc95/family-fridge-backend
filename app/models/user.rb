class User < ApplicationRecord
    has_many :comments, :dependent => :destroy
    has_many :images, :dependent => :destroy
    has_many :user_fridges, :dependent => :destroy
    has_many :fridges, through: :user_fridges
end
