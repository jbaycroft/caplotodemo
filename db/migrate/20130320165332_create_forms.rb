class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.references :client
      t.text :equip_name
      t.text :equip_id
      t.text :equip_location
      t.text :tasks_performed
      t.text :assessor
      t.boolean :elec_highvolt
      t.boolean :elec_lowvolt
      t.boolean :chem_hazmat
      t.boolean :mech
      t.boolean :stored_engy
      t.boolean :therm_cryo
      t.boolean :therm_high
      t.boolean :press_hyd
      t.boolean :press_pneu
      t.boolean :vacuum
      t.boolean :ion_rad
      t.boolean :non_rad_uv
      t.boolean :non_rad_rf
      t.boolean :other
      t.text :other_text

      t.timestamps
    end
    add_index :forms, :client_id
  end
end
