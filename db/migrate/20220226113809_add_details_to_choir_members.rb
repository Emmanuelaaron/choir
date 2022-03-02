class AddDetailsToChoirMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :choir_members, :email, :string
    add_column :choir_members, :descipled, :boolean
  end
end
