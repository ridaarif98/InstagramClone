class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :website, :string
    add_column :users, :bio, :string
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
  end
end
