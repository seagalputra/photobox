# frozen_string_literal: true

# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  description :text
#  slug        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Album < ApplicationRecord
  UNCATEGORIZED = 'Uncategorized'

  # attributes
  has_many_attached :photos

  # scope
  scope :has_uncategorized?, -> { where(title: UNCATEGORIZED) }

  # callback
  before_save :slugify

  # validation
  validates_presence_of :title

  def grab_images(url:, title:) = photos.attach(io: URI.parse(url).open, filename: title)

  def total_photos
    if photos.size > 1
      "#{photos.size} photos"
    else
      "#{photos.size} photo"
    end
  end

  private

  def slugify
    return unless title

    self.slug = title.gsub(/\s/, '').underscore.dasherize
  end
end
