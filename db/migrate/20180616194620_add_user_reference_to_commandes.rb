class AddUserReferenceToCommandes < ActiveRecord::Migration[5.2]
  def change
    add_column :commandes, :user_id, :integer
  end
end
