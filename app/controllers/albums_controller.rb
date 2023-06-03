# frozen_string_literal: true

class AlbumsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @albums = pagy(Album.all)
    @album = Album.new
  end

  def show
    @album = Album.find_by(slug: params[:slug])
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.json { render json: @album }
      else
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def album_params = params.require(:album).permit(:title, :description)
end
