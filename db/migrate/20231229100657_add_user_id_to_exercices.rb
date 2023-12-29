class AddUserIdToExercices < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercices, :user, null: false, foreign_key: true
  end
end
