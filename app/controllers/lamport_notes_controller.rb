class LamportNotesController < ApplicationController
  before_action :set_lamport_note, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! #, except: [:index, :show]

  # GET /lamport_notes
  # GET /lamport_notes.json
  def index
    #@lamport_notes = LamportNote.all.order("created_at DESC")
    @lamport_notes_paginação = LamportNote.paginate(:page => params[:page], per_page: 6)
    if params[:search]
      @lamport_notes = LamportNote.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], per_page: 6)
    else
      @lamport_notes = LamportNote.all.order("created_at DESC").paginate(:page => params[:page], per_page: 6)
    end
  end

  # GET /lamport_notes/1
  # GET /lamport_notes/1.json
  def show
  end

  # GET /lamport_notes/new
  def new
    @lamport_note = current_user.lamport_notes.build
  end

  # GET /lamport_notes/1/edit
  def edit
  end


  # POST /lamport_notes
  # POST /lamport_notes.json
  def create
    @lamport_note = current_user.lamport_notes.build(lamport_note_params)
    respond_to do |format|
      if @lamport_note.save
        format.html { redirect_to @lamport_note, notice: 'Lamport note was successfully created.' }
        format.json { render :show, status: :created, location: @lamport_note }
      else
        format.html { render :new }
        format.json { render json: @lamport_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lamport_notes/1
  # PATCH/PUT /lamport_notes/1.json
  def update
    respond_to do |format|
      if @lamport_note.update(lamport_note_params)
        format.html { redirect_to @lamport_note, notice: 'Lamport note was successfully updated.' }
        format.json { render :show, status: :ok, location: @lamport_note }
      else
        format.html { render :edit }
        format.json { render json: @lamport_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lamport_notes/1
  # DELETE /lamport_notes/1.json
  def destroy
    @lamport_note.destroy
    respond_to do |format|
      format.html { redirect_to lamport_notes_url, notice: 'Lamport note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lamport_note
      @lamport_note = LamportNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lamport_note_params
      params.require(:lamport_note).permit(:titulo, :texto)
    end
end
