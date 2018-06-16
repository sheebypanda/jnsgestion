class CreateLivraisons < ActiveRecord::Migration[5.2]
  def change
    create_table :livraisons do |t|
      t.string :adresse
      t.string :complementadresse
      t.integer :cp
      t.string :ville
      t.string :pays
      t.string :initiales
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
