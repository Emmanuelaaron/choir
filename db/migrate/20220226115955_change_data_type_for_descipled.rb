class ChangeDataTypeForDescipled < ActiveRecord::Migration[6.1]
  def change
    change_column :choir_members, :descipled, :string
  end
end
