# frozen_string_literal: true

# FILE=v1_create_sample_albums_and_photos rake db:seed:single

puts 'Seeding sample album and photos data...'

# search 8 cat images using Unsplash API
cats = Unsplash::Photo.search('cats').take(8)
cat_urls = cats.map(&:track_download)

albums = [
  {
    title: 'My First Album',
    description: 'This is my first album that created in Photobox',
    photos: [
      {
        title: 'Photo #1',
        url: cat_urls[0]
      },
      {
        title: 'Photo #2',
        url: cat_urls[1]
      }
    ]
  },
  {
    title: 'Second Album',
    description: 'Photobox app is totally fun, you must try it!',
    photos: [
      {
        title: 'Photo #1',
        url: cat_urls[2]
      },
      {
        title: 'Photo #2',
        url: cat_urls[3]
      },
      {
        title: 'Photo #3',
        url: cat_urls[4]
      }
    ]
  },
  {
    title: '#3 Album',
    description: 'My cats collection is really cute!',
    photos: [
      {
        title: 'Photo #1',
        url: cat_urls[5]
      },
      {
        title: 'Photo #2',
        url: cat_urls[6]
      },
      {
        title: 'Photo #3',
        url: cat_urls[7]
      }
    ]
  }
]

album_titles = albums.map { |album| album[:title] }
old_albums = Album.where(title: album_titles)
old_albums.destroy_all unless old_albums.empty?

albums.each do |al|
  album = Album.new(title: al[:title], description: al[:description])

  al[:photos].each do |photo|
    album.grab_images(url: photo[:url], title: photo[:title])
  end

  album.save
end

puts 'Seeding album and photo data finished!'
