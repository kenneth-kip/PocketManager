class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name, null: false, default: ''
      t.string :middle_name
      t.string :last_name
      t.string :admission_number, null: false, default: ''
      t.timestamps
    end
  end
end
