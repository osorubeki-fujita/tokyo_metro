class StationTimetableStartingStationInfo < ActiveRecord::Base
  # has_many :train_times
  has_many :station_train_times
  include ::Association::To::Station::Info

  def to_s
    "#{ station_info.name_ja }始発"
  end

end