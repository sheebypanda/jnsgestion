class Contact < ApplicationRecord
  has_many :livraisons
  has_many :commandes
end
