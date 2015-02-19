class RailsTokyoMetro::Application::RequiredFiles::All::Fundamental::Api::TrainTimetable::Info::StationTime < RailsTokyoMetro::Application::RequiredFiles

  def initialize
    super( set_all_files_under_the_top_namespace: false )
  end

  def self.top_file
    ::File.join( ::Rails.root , "lib" , "tokyo_metro" , "api" , "train_timetable" , "info" , "station_time" )
  end

  def self.other_files
    Info.files
  end

end