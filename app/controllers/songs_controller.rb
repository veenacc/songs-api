class SongsController < ApplicationController
  def index
    @songs= Song.all
    render template: "songs/index"
  end

  def show
    @song =Song.find_by(id: params[:id])
    render template: "songs/show"
  end

  def create
    @song =Song.new(title: params[:title],
                    artist: params[:artist],
                    rating: params[:rating])
    @song.save
    render template: "songs/show"

  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title 
    @song.artist = params[:artist] || @song.artist
    @song.rating =params[:rating] || @song.rating
    #render json: {msg:"#{params[:id]}"}
    @song.save
    render template: "songs/show"
  end

  def destroy
    @song=Song.find_by(id: params[:id])
    @song.destroy
    render json: {msg: "deleted #{params[:id]}"}
  end

end
