class SongsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new

    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end
end
