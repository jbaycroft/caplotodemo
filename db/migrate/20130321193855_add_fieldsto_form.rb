class AddFieldstoForm < ActiveRecord::Migration
  def up
  	change_table :forms do |t|
  		t.text :highvolt_text
  		t.text :lowvolt_text
  		t.text :hazmat_text
  		t.text :mech_text
  		t.text :stored_text
  		t.text :cryo_text
  		t.text :high_text
  		t.text :hyd_text
  		t.text :pneu_text
  		t.text :vac_text
  		t.text :rad_text
  		t.text :uv_text
  		t.text :rf_text
  	end
  end

  def down
  	remove_column :forms, :highvolt_text
  	remove_column :forms, :lowvolt_text
  	remove_column :forms, :hazmat_text
  	remove_column :forms, :mech_text
  	remove_column :forms, :stored_text
  	remove_column :forms, :cryo_text
  	remove_column :forms, :high_text
  	remove_column :forms, :hyd_text
  	remove_column :forms, :pneu_text
  	remove_column :forms, :vac_text
  	remove_column :forms, :rad_text
  	remove_column :forms, :uv_text
  	remove_column :forms, :rf_text
  end
end
