class Provider < ActiveRecord::Base
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :tin, :presence => true
end
