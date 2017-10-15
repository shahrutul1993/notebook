class NotePermission < ActiveRecord::Base
belongs_to :user
belongs_to :notes
belongs_to :granted_by
end
