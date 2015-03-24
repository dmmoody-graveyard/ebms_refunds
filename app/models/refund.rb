class Refund < ActiveRecord::Base
  belongs_to :provider
  belongs_to :claimant
  validates :amount_requested, :presence => true
  validates :reason, :presence => true
end
