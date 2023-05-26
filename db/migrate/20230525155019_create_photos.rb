class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
