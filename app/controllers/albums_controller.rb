# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.includes(:photos).all
  end
end
