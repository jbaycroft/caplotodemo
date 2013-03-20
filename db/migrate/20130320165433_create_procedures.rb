class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.references :form
      t.integer :step_num
      t.text :haz_eng_loc
      t.text :engy_ctrl_pt
      t.text :lo_dev
      t.text :resid_engy
      t.text :valid_zero
      t.string :image

      t.timestamps
    end
    add_index :procedures, :form_id
  end
end
