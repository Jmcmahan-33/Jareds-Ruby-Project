class RemoveCommentsFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :comment, :string
  end
end
