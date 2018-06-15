class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :categorie
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :complementadresse
      t.integer :cp
      t.string :ville
      t.string :pays
      t.string :raisonsociale
      t.string :tel
      t.string :mobile
      t.string :email
      t.string :activite
      t.string :url
      t.string :siret
      t.string :tva
      t.text :commentaire

      t.timestamps
    end
  end
end
