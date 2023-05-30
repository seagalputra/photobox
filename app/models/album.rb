# frozen_string_literal: true

class Album < ApplicationRecord
  UNCATEGORIZED = 'Uncategorized'

  has_many_attached :photos

  scope :has_uncategorized?, -> { where(title: UNCATEGORIZED) }

  def grab_images(url:, title:) = photos.attach(io: URI.parse(url).open, filename: title)
end
