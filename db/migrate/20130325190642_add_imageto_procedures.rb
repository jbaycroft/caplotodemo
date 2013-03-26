class AddImagetoProcedures < ActiveRecord::Migration
  def up
  	change_table :procedures do |t|
  		t.string :image
  	end
  end

  def down
  	remove_column :procedures, :image
  end
end
