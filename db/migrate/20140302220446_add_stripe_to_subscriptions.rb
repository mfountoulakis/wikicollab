class AddStripeToSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.string :stripe_customer_token
      t.string :plan_id
      t.belongs_to :user


      t.timestamps
    end
  end
end
