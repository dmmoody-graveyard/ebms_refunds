require 'rails_helper'

describe Claimant do
  it { should belong_to :cert }
  it { should have_many :refunds }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :claimant_number }
end
