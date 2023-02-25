class DropCommentsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :comments, if_exists: true
  end
end
