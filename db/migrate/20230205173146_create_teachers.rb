class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :instrument
      t.boolean :availability
      t.integer :rate
      t.timestamps
    end
  end
end
