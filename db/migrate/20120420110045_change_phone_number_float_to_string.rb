class ChangePhoneNumberFloatToString < ActiveRecord::Migration
  def up
  	change_column :phone_numbers, :number, :string
  end

  def down
  	change_column :phone_numbers, :number, :integer
  end
end
