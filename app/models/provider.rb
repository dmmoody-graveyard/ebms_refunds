class Provider < ActiveRecord::Base
  has_many :refunds
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :tin, :presence => true
end
