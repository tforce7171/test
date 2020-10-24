class CreateCalenders < ActiveRecord::Migration[5.2]
  def change
    create_table :calenders do |t|
      t.string :name
      t.integer :admin_id
      t.integer :room_id

      t.timestamps
    end
  end
end
