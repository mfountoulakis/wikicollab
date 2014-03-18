class AddEmailToWikis < ActiveRecord::Migration
  def change
    add_column :wikis, :email, :string
  end
end
