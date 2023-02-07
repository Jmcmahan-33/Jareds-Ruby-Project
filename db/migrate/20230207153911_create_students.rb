class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :instrument
      t.string :comment
      t.integer :teacher_id
      t.timestamps
    end
  end
end
