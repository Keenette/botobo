class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.references :exercice, null: false, foreign_key: true

      t.timestamps
    end
  end
end