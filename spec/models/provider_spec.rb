require 'rails_helper'

describe Provider do
  it { should have_many :refunds }
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :tin }
end
