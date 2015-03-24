class Claimant < ActiveRecord::Base
  belongs_to :cert
  has_many :refunds
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :claimant_number, :presence => true
end
