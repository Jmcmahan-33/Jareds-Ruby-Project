class ChangeColumnNameForInstrument < ActiveRecord::Migration[6.1]
  def change
    rename_column :teachers, :instrument, :musical_talents
  end
end
