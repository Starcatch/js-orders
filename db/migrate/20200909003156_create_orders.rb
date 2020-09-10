class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
