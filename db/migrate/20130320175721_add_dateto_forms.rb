class AddDatetoForms < ActiveRecord::Migration
  def up
  	change_table :forms do |t|
  		t.date :assess_date
  	end
  end

  def down
  	remove_columns :forms, :assess_date
  end
end
