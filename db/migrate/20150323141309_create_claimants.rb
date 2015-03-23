class CreateClaimants < ActiveRecord::Migration
  def change
    create_table :claimants do |t|
      t.integer :claimant_number
      t.string :first_name
      t.string :last_name
      t.integer :cert_id

      t.timestamps
    end
  end
end
