class CreateExercices < ActiveRecord::Migration[7.0]
  def change
    create_table :exercices do |t|
      t.string :description
      t.integer :difficulty_level
      t.integer :duration
      t.string :name

      t.timestamps
    end
  end
end
