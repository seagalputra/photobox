class PhotosController < ApplicationController
  def show; end

  def create; end

  def capture
    render 'photos/capture', layout: 'camera'
  end
end
