class Commande < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  has_one :vehicule
end
