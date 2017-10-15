class NotesController < ApplicationController
	before_action :find_note, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

	def index
	@notepermissions = NotePermission.where(user_id: current_user.id)
	# @notes = Note.where(user_id: current_user.id)
	end


	def show
	end

	def new
		@note= current_user.notes.build
	end

	def create
		@note=  current_user.notes.build(note_params)
		if @note.save
			redirect_to @note, notice: "Successfully notes created."
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @note.update(note_params)
			redirect_to @note, notice: "Successfully updated notes."
		else
			render 'Edit'
		end
	end

	def destroy
		@note.destroy
		redirect_to root_path
	end

	private

	def find_note
		@note = Note.find(params[:id])
	end

	def note_params
		params.require(:note).permit(:title, :content)
	end


end
