module TokyoMetro::ApiModules::Customize::StationTimetable::ConvertTerminalStation::MarunouchiBranchLineForNakanoSakaue::Train

  def convert_terminal_station_to_nakano_sakaue_in_marunouchi_branch_line
    convert_terminal_station( *( ::TokyoMetro::CommonModules::Dictionary::Station::StringList.nakano_sakaue ) )
  end

end