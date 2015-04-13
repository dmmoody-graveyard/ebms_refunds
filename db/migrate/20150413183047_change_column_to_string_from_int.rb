class ChangeColumnToStringFromInt < ActiveRecord::Migration
  def up
    change_column :claimants, :claimant_number, :string
    change_column :certs, :cert_number, :string
  end

  def down
    change_column :claimants, :claimant_number, :integer
    change_column :certs, :cert_number, :integer
  end
end
