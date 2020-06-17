class Fridge < ApplicationRecord
    has_many :images, :dependent => :nullify
    has_many :comments, through: :images
    has_many :user_fridges, :dependent => :destroy
    has_many :users, through: :user_fridges

    accepts_nested_attributes_for :user_fridges
end