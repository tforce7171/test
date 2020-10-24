class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.integer :calender_id
      t.integer :year
      t.integer :month
      t.integer :date
      t.integer :hour
      t.integer :min
      t.integer :impossible

      t.timestamps
    end
  end
end
