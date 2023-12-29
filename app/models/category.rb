class Category < ApplicationRecord
  has_many :subscriptions
  belongs_to :exercice
  has_many :users, through: :subscriptions
  # Autres méthodes et associations...
end
