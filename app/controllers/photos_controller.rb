# frozen_string_literal: true

class PhotosController < ApplicationController
  def show; end

  def create
    @album = Album.find_or_initialize_by(id: params[:album_id])
    @album = Album.find_or_initialize_by(title: Album::UNCATEGORIZED) unless @album.title
    @album.photos.attach(photo_params[:photo])
    return unless @album.save

    redirect_to root_path
  end

  def capture
    render 'photos/capture', layout: 'camera'
  end

  private

  def photo_params = params.permit(:photo)
end
