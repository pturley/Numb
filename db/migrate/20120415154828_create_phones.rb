class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.boolean :has_internet
      t.boolean :has_gps
      t.string :make
      t.timestamps
    end
  end
end
