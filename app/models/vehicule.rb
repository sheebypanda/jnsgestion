class Vehicule < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :commande
end
