class Album < ApplicationRecord
  has_many_attached :photos

  def grab_images(url:, title:) = photos.attach(io: URI.parse(url).open, filename: title)
end
