require 'rails_helper'

describe Refund do
  it { should belong_to :provider }
  it { should belong_to :claimant }
  it { should validate_presence_of :amount_requested }
  it { should validate_presence_of :reason }
end
