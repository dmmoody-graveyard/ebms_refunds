class Group < ActiveRecord::Base
  validates :group_number, :presence => true
  validates :name, :presence => true
end
