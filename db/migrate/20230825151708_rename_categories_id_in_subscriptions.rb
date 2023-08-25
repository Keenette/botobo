class RenameCategoriesIdInSubscriptions < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscriptions, :categories_id, :category_id
  end
end

