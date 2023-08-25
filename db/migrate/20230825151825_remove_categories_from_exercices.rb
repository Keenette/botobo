class RemoveCategoriesFromExercices < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercices, :categories, :string
  end
end
