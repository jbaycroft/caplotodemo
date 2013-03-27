class Procedure < ActiveRecord::Base
  belongs_to :form
  attr_accessible :engy_ctrl_pt, :haz_eng_loc, :image, :lo_dev, :resid_engy, :step_num, :valid_zero, :image_cache
  mount_uploader :image, ImageUploader
end
