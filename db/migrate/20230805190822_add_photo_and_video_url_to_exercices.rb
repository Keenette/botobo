class AddPhotoAndVideoUrlToExercices < ActiveRecord::Migration[7.0]
  def change
    add_column :exercices, :photo, :string
    add_column :exercices, :video_url, :string
  end
end
