class Category < ApplicationRecord
  has_many :subscriptions
  belongs_to :exercice
  # Autres méthodes et associations...
end

