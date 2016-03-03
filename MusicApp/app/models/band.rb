class Band < ActiveRecord::Base

  has_many(
    :albums,
    class_name: 'Album',
    primary_key: :id,
    foreign_key: :band_id,
    dependent: :destroy
  )

  validates(
    :name, presence: true
  )

  def self.find_by_credentials(name)
    band = Band.find_by(name: name)
    return nil if band.nil?
    band
  end



end
