# frozen_string_literal: true

# FILE=v1_create_sample_albums_and_photos rake db:seed:single

puts 'Seeding sample album and photos data...'

albums = [
  {
    title: 'My First Album',
    photos: [
      {
        title: 'Photo #1',
        url: Faker::LoremFlickr.image(size: '500x500')
      },
      {
        title: 'Photo #2',
        url: Faker::LoremFlickr.image(size: '500x500')
      }
    ]
  },
  {
    title: 'Second Album',
    photos: [
      {
        title: 'Photo #1',
        url: Faker::LoremFlickr.image(size: '500x500')
      },
      {
        title: 'Photo #2',
        url: Faker::LoremFlickr.image(size: '1280x800')
      },
      {
        title: 'Photo #3',
        url: Faker::LoremFlickr.image(size: '1280x800')
      }
    ]
  },
  {
    title: '#3 Album',
    photos: [
      {
        title: 'Photo #1',
        url: Faker::LoremFlickr.image(size: '500x500')
      },
      {
        title: 'Photo #2',
        url: Faker::LoremFlickr.image(size: '1366x768')
      },
      {
        title: 'Photo #3',
        url: Faker::LoremFlickr.image(size: '960x640')
      }
    ]
  }
]

albums.each do |al|
  album = Album.new(title: al[:title])
  album.photos.create(al[:photos]) if album.save
end

puts 'Seeding album and photo data finished!'
