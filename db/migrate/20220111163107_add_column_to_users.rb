class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :user_name, :string
    add_column :users, :image, :string
  end
end
