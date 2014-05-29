class RapperSongsController < ApplicationController
  before_action :set_rapper_song, only: [:show, :edit, :update, :destroy]

  # GET /rapper_songs
  # GET /rapper_songs.json
  def index
    @rappers = Rapper.all
    @songs = Song.all
    @rapper_songs = RapperSong.all
  end

  # GET /rapper_songs/1
  # GET /rapper_songs/1.json
  def show
  end

  # GET /rapper_songs/new
  def new
    @rapper_song = RapperSong.new
  end

  # GET /rapper_songs/1/edit
  def edit
  end

  # POST /rapper_songs
  # POST /rapper_songs.json
  def create
    @rapper_song = RapperSong.new(rapper_song_params)

    respond_to do |format|
      if @rapper_song.save
        format.html { redirect_to @rapper_song, notice: 'Rapper song was successfully created.' }
        format.json { render :show, status: :created, location: @rapper_song }
      else
        format.html { render :new }
        format.json { render json: @rapper_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rapper_songs/1
  # PATCH/PUT /rapper_songs/1.json
  def update
    respond_to do |format|
      if @rapper_song.update(rapper_song_params)
        format.html { redirect_to @rapper_song, notice: 'Rapper song was successfully updated.' }
        format.json { render :show, status: :ok, location: @rapper_song }
      else
        format.html { render :edit }
        format.json { render json: @rapper_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rapper_songs/1
  # DELETE /rapper_songs/1.json
  def destroy
    @rapper_song.destroy
    respond_to do |format|
      format.html { redirect_to rapper_songs_url, notice: 'Rapper song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rapper_song
      @rapper_song = RapperSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rapper_song_params
      params.require(:rapper_song).permit(:rapper, :song)
    end
end
