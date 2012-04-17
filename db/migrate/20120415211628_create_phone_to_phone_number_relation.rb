class CreatePhoneToPhoneNumberRelation < ActiveRecord::Migration
  def up
  	add_column :phone_numbers, :phone_id, :integer
  end

  def down
  	remove_column :phone_numbers, :phone_id
  end
end
