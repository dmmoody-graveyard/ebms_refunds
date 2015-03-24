class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :tin

      t.timestamps
    end
  end
end
