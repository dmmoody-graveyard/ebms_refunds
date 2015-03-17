require 'rails_helper'

describe Group do
  it { should validate_presence_of :name }
  it { should validate_presence_of :group_number }
end
