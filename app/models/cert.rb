class Cert < ActiveRecord::Base
  belongs_to :group
  has_many :claimants
  validates :cert_number, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :member_id, :presence => true
end
