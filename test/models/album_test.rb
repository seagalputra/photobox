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
require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
