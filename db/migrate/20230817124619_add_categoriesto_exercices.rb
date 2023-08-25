class AddCategoriestoExercices < ActiveRecord::Migration[7.0]
  def change
    add_column :exercices, :categories, :string
  end
end
