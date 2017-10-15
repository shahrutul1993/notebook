class AddGrantedByToNotePermissions < ActiveRecord::Migration
  def change
    add_column :note_permissions, :granted_by, :integer
  end
end
