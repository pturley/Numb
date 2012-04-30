class RemoveThePeopleTable < ActiveRecord::Migration
  def up
    drop_table :people
  end

  def down
    create_table :people do |t|
      t.string :name
      t.boolean :is_permanent
      t.boolean :is_active
      t.timestamps
    end
  end
end
