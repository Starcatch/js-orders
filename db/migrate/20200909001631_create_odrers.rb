class CreateOdrers < ActiveRecord::Migration[6.0]
  def change
    create_table :odrers do |t|

      t.timestamps
    end
  end
end
