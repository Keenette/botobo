class AddFirstNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :first_name, :string
  end
end
