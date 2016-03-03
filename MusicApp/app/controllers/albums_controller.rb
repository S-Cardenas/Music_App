class AlbumsController < ApplicationController


  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(parms[:id])
    render :show
  end

  def new
    @album = Album.new
    render :new
  end

  def create

  end

  private

  def album_params
    params.require(:album)
      .permit(:title, :band, :band_id, :recorded)
  end

end
