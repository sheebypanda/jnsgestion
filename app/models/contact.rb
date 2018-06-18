class Contact < ApplicationRecord
  has_many :livraisons
  has_many :commandes
  has_many :vehicules, through: :commandes
end
