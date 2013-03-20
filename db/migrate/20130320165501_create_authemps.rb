class CreateAuthemps < ActiveRecord::Migration
  def change
    create_table :authemps do |t|
      t.references :form
      t.string :name
      t.string :title

      t.timestamps
    end
    add_index :authemps, :form_id
  end
end
