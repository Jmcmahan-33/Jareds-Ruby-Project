class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :student_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
