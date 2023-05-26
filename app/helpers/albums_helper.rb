# frozen_string_literal: true

module AlbumsHelper
  def randomize_rotation
    rotation = ['rotate-6', '-rotate-6'].sample
    "#{rotation} shadow-lg"
  end
end
