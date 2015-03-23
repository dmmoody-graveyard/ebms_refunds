class AddColumnGroupId < ActiveRecord::Migration
  def change
    add_column :certs, :group_id, :integer
  end
end
