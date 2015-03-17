class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.column :group_number, :int
      t.column :name, :string

      t.timestamps
    end
  end
end
