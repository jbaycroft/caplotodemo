class Form < ActiveRecord::Base
  belongs_to :client
  has_many :procedures
  has_many :authemps
  attr_accessible :assessor, :chem_hazmat, :elec_highvolt, :elec_lowvolt, :equip_id, :equip_location, :equip_name, :ion_rad, :mech, :non_rad_rf, :non_rad_uv, :other, :other_text, :press_hyd, :press_pneu, :stored_engy, :tasks_performed, :therm_cryo, :therm_high, :vacuum
end
