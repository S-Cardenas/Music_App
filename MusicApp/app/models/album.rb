class Album < ActiveRecord::Base

  belongs_to(
    :band,
    class_name: 'Band',
    primary_key: :id,
    foreign_key: :band_id
  )

  has_many(
    :tracks,
    class_name: 'Track',
    primary_key: :id,
    foreign_key: :album_id
  )

validates(
  :title, presence: true
)

def self.find_by_credentials(title)
  album = Album.find_by(title: title)
  return nil if album.nil?
  album
end

end
