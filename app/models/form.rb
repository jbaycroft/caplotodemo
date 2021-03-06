class Form < ActiveRecord::Base
  belongs_to :client
  has_many :procedures, :dependent => :destroy
  has_many :authemps, :dependent => :destroy
  attr_accessible :assessor, :chem_hazmat, :assess_date, :elec_highvolt, :elec_lowvolt, :equip_id, :equip_location, :equip_name, :ion_rad, :mech, :non_rad_rf, :non_rad_uv, :other, :other_text, :press_hyd, :press_pneu, :stored_engy, :tasks_performed, :therm_cryo, :therm_high, :vacuum, :procedures_attributes, :authemps_attributes, :highvolt_text, :lowvolt_text, :hazmat_text, :mech_text, :stored_text, :cryo_text, :high_text, :hyd_text, :pneu_text, :vac_text, :rad_text, :uv_text, :rf_text
  accepts_nested_attributes_for :authemps, :allow_destroy => true
  accepts_nested_attributes_for :procedures, :allow_destroy => true

end
