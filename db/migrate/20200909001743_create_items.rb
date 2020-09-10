class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :order, foreign_key: true
      t.string :item_name
      t.string :item_price

      t.timestamps
    end
  end
end
