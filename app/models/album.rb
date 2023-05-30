# frozen_string_literal: true

class Album < ApplicationRecord
  UNCATEGORIZED = 'Uncategorized'

  # attributes
  has_many_attached :photos

  # scope
  scope :has_uncategorized?, -> { where(title: UNCATEGORIZED) }

  # callback
  before_save :slugify

  def grab_images(url:, title:) = photos.attach(io: URI.parse(url).open, filename: title)

  private

  def slugify
    return unless title

    self.slug = title.gsub(/\s/, '').underscore.dasherize
  end
end
