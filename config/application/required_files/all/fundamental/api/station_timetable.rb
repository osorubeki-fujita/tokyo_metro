class RailsTokyoMetro::Application::RequiredFiles::All::Fundamental::Api::StationTimetable < RailsTokyoMetro::Application::RequiredFiles

  def initialize
    super( set_all_files_under_the_top_namespace: true )
  end

  def self.top_file
    ::File.join( ::Rails.root , "lib" , "tokyo_metro" , "api" , "station_timetable" )
  end

  def self.other_files
    Info.files
  end

end