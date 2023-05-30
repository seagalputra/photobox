# frozen_string_literal: true

class AlbumsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @albums = pagy(Album.all)
  end

  def show
    @album = Album.find_by(slug: params[:slug])
  end
end
