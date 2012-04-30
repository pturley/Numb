class AddPhoneNumberIdToPhone < ActiveRecord::Migration
  def up
    add_column :phones, :phone_number_id, :integer
    remove_column :phone_numbers, :phone_id
  end

  def down
    remove_column :phones, :phone_number_id
    add_column :phone_numbers, :phone_id, :integer
  end
end
