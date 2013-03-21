class Client < ActiveRecord::Base
  attr_accessible :contact, :details, :location, :name
  has_many :forms, :dependent => :destroy
end
