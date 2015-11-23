class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :customers, :orders do |t|
      # t.index [:customer_id, :order_id]
      # t.index [:order_id, :customer_id]
    end
  end
end
