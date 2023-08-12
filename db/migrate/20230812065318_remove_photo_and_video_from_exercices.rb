class RemovePhotoAndVideoFromExercices < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercices, :photo, :string
    remove_column :exercices, :video_url, :string
  end
end
