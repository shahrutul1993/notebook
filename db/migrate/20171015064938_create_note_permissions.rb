class CreateNotePermissions < ActiveRecord::Migration
  def change
    create_table :note_permissions do |t|
      t.integer :note_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
