class Commande < ApplicationRecord
  belongs_to :contact
  has_one :vehicule
end
