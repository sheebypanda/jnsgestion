class CreateCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :commandes do |t|
      t.string :etat
      t.references :contact, foreign_key: true
      t.string :marque
      t.string :modele
      t.string :finition
      t.string :categorie
      t.integer :anneemin
      t.integer :anneemax
      t.integer :km
      t.string :transmission
      t.string :carburant
      t.string :puissance
      t.string :co2
      t.string :couleur
      t.text :options
      t.text :commentaire

      t.timestamps
    end
  end
end
