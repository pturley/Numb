class AddBooleanFieldIsAssignedToPhoneNumber < ActiveRecord::Migration
  def up
  	add_column :phone_numbers, :is_assigned, :boolean
  end

  def down
  	remove_column :phone_numbers, :is_assigned
  end
end
