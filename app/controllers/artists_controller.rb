class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    if @artist = Artist.new(artist_params)
    @artist.save
      redirect_to artist_path(@artist)
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    if @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end
end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
