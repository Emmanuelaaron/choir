class CreateChoirMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :choir_members do |t|
      t.string :firstname
      t.string :lastname
      t.string :contact
      t.string :cellnumber
      t.string :celebrationpoint
      t.string :voice

      t.timestamps
    end
  end
end
