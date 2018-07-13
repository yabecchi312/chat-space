class RemoveIndexToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_index :users, [:name, :email]
  end
end
