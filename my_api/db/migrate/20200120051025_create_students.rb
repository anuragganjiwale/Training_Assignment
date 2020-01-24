class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.string :roll_number
      t.string :stream
      t.timestamps
    end
  end
end
