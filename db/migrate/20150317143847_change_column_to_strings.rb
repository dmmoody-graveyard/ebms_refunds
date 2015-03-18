class ChangeColumnToStrings < ActiveRecord::Migration
  def change
    def up
      change_column :groups, :group_number, :string
    end

    def down
      change_column :groups, :group_number, :int
    end
  end
end
