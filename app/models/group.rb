class Group < ActiveRecord::Base
  has_many :certs
  validates :group_number, :presence => true
  validates :name, :presence => true
end
