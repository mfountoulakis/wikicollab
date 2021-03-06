class AddUserToWikis < ActiveRecord::Migration
  def change
    add_column :wikis, :user_id, :integer
    add_index :wikis, :user_id
  end

  def self.up
    add_column :users, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :users, :admin
  end

end
