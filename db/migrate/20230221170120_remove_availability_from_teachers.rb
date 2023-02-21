class RemoveAvailabilityFromTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :availability, :boolean
  end
end
