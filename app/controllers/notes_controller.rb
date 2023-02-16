class NotesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    before_action :authorize, only: [:new, :create]

    def index
        render json: Note.all
    end
    def show
        note=Note.find(params[:id])
        render json: note, status: :ok
    end
    def new
        @note = Note.new
    end
    
    def create
        @note = current_user.notes.new(notes_params)
    
        if @note.save
          redirect_to @note
        else
          render 'new'
        end
      end

    def update
        note=Note.find(params[:id]).update(note:params[:note])
        render json: note, status: :accepted
    end
    def destroy
        note = Note.find(params[:id])
        note.destroy
        head :no_content
      end

    private
    def notes_params
        params.permit(:note, :user_id)
    end
    def render_not_found
        render json: {error:"Note not found"}, status: :not_found
    end
    def authorize
        unless current_user
          render json: {error:'You must be logged in to create a new note.'}
        end
      end
end
