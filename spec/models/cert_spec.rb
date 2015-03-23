require 'rails_helper'

describe Cert do
  it { should belong_to :group }
  it { should have_many :claimants }
  it { should validate_presence_of :cert_number }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :member_id }
end
