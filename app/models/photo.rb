class Photo < ApplicationRecord
  belongs_to :album, optional: true
end
