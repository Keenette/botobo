class RenameCategorieToCategory < ActiveRecord::Migration[6.0] # Vérifiez la version de votre ActiveRecord
  def change
    rename_table :categorie, :categories
  end
end
