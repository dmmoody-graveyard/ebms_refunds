class CreateRefunds < ActiveRecord::Migration
  def change
    create_table :refunds do |t|
      t.integer :provider_id
      t.integer :claimant_id
      t.float :amount_requested
      t.date :date_received
      t.float :amount_received
      t.date :date_posted
      t.text :reason

      t.timestamps
    end
  end
end
