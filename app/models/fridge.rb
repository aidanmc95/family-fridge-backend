class Fridge < ApplicationRecord
    has_many :images, :dependent => :nullify
    has_many :user_fridges, :dependent => :destroy
    has_many :users, through: :user_fridges
end