class ChangeColumnToString < ActiveRecord::Migration
  def change
    change_column :groups, :group_number, :string
  end
end
