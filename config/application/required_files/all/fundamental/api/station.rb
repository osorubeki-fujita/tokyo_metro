class RailsTokyoMetro::Application::RequiredFiles::All::Fundamental::Api::Station < RailsTokyoMetro::Application::RequiredFiles

  def self.top_file
    ::File.join( ::Rails.root , "lib" , "tokyo_metro" , "api" , "station" )
  end

end