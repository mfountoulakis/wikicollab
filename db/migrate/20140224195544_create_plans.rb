class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.references :subscriptions, index: true

      t.timestamps
    end
  end
end
