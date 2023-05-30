class PhotosController < ApplicationController
  def show; end

  def capture
    render 'photos/capture', layout: 'camera'
  end
end
