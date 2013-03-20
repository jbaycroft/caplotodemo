# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130320175721) do

  create_table "authemps", :force => true do |t|
    t.integer  "form_id"
    t.string   "name"
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authemps", ["form_id"], :name => "index_authemps_on_form_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.text     "details"
    t.string   "contact"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "forms", :force => true do |t|
    t.integer  "client_id"
    t.text     "equip_name"
    t.text     "equip_id"
    t.text     "equip_location"
    t.text     "tasks_performed"
    t.text     "assessor"
    t.boolean  "elec_highvolt"
    t.boolean  "elec_lowvolt"
    t.boolean  "chem_hazmat"
    t.boolean  "mech"
    t.boolean  "stored_engy"
    t.boolean  "therm_cryo"
    t.boolean  "therm_high"
    t.boolean  "press_hyd"
    t.boolean  "press_pneu"
    t.boolean  "vacuum"
    t.boolean  "ion_rad"
    t.boolean  "non_rad_uv"
    t.boolean  "non_rad_rf"
    t.boolean  "other"
    t.text     "other_text"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.date     "assess_date"
  end

  add_index "forms", ["client_id"], :name => "index_forms_on_client_id"

  create_table "procedures", :force => true do |t|
    t.integer  "form_id"
    t.integer  "step_num"
    t.text     "haz_eng_loc"
    t.text     "engy_ctrl_pt"
    t.text     "lo_dev"
    t.text     "resid_engy"
    t.text     "valid_zero"
    t.string   "image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "procedures", ["form_id"], :name => "index_procedures_on_form_id"

end
