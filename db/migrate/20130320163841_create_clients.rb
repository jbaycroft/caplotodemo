class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :location
      t.text :details
      t.string :contact

      t.timestamps
    end
  end
end
