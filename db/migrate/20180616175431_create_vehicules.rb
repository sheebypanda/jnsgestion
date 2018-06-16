class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.references :user, foreign_key: true
      t.references :contact, foreign_key: true
      t.references :commande, foreign_key: true
      t.string :marque
      t.string :modele
      t.string :finition
      t.string :categorie
      t.string :boite
      t.integer :cylindree
      t.integer :cv
      t.integer :cvfiscaux
      t.string :couleur
      t.string :chassis
      t.string :carburant
      t.string :immat
      t.integer :km
      t.string :co2
      t.float :prixht
      t.text :equipement

      t.timestamps
    end
  end
end
