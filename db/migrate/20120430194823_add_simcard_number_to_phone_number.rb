class AddSimcardNumberToPhoneNumber < ActiveRecord::Migration
  def up
    add_column :phone_numbers, :simcard_number, :string
  end

  def down
    remove_column :phone_numbers, :simcard_number
  end
end
