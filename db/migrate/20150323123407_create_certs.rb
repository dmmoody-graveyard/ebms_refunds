class CreateCerts < ActiveRecord::Migration
  def change
    create_table :certs do |t|
      t.integer :cert_number
      t.string :first_name
      t.string :last_name
      t.string :member_id

      t.timestamps
    end
  end
end
