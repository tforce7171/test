class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :ign
      t.text :password
      t.text :clan
      t.text :roll

      t.timestamps
    end
  end
end
