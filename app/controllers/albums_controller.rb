# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @galleries = Album.includes(:photos).all
  end
end
