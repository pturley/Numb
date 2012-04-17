class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    	t.string :name
    	t.boolean :is_permanent
    	t.boolean :is_active
    	t.timestamps
    end
  end
end
