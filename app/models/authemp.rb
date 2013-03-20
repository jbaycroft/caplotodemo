class Authemp < ActiveRecord::Base
  belongs_to :form
  attr_accessible :name, :title
end
