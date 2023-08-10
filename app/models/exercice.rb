class Exercice < ApplicationRecord
  has_many :categories
  has_many :users, through: :categories
  has_one_attached :image
end
