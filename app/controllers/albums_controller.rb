# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.includes(:photos).all
  end

  def show
    @album = Album.find(params[:id])
  end
end
