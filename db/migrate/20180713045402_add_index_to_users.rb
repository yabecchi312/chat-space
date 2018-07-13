class AddIndexToUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, [:name, :email]
  end
end
