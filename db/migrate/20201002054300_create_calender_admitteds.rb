class CreateCalenderAdmitteds < ActiveRecord::Migration[5.2]
  def change
    create_table :calender_admitteds do |t|
      t.integer :user_id
      t.integer :calender_id

      t.timestamps
    end
  end
end
