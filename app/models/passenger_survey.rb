class PassengerSurvey < ActiveRecord::Base
  has_many :station_passenger_surveys , class: ::Station::PassengerSurvey, foreign_key: :passenger_survey_id
  has_many :station_infos , through: :station_passenger_surveys , class: ::Station::Info

  def self.latest_passenger_survey_year
    all.pluck( :survey_year ).max
  end

  [ :journeys , :passenger_journey , :journey ].each do | method_name |
    eval <<-DEF
      def #{ method_name }
        passenger_journeys
      end
    DEF
  end

  # 特定の年の路線を取得する
  scope :in_year , ->( year ) {
    where( survey_year: year )
  }

  scope :find_by_year , ->( year ) {
    find_by( survey_year: year )
  }

  # 指定された路線のデータを取得する。
  # 乗降人員の駅データにリンクしている駅（複数、同名でも路線ごとに異なる）を取得し、
  # 駅が設定された路線に所属しているか否かによって判定する。
  scope :select_railway_line , ->( railway_line_infos ) {
    railway_line_info_ids = railway_line_infos.map( &:id ).uniq
    station_info_ids = ::Station::Info.where( railway_line_info_id: railway_line_info_ids ).pluck( :id )
    passenger_survey_ids = ::Station::PassengerSurvey.where( station_info_id: station_info_ids ).pluck( :passenger_survey_id )
    where( id: passenger_survey_ids )
  }

  # 設定された年・路線のデータを取得し、乗降人員が多い順に並び替える。
  scope :list_of_a_railway_line , ->( survey_year: nil , railway_line_infos: nil ) {
    raise "Error" if [ survey_year , railway_line_infos ].any?{ |i| i.nil? }
    in_year( survey_year ).order( passenger_journeys: :desc ).select_railway_line( railway_line_infos )
  }

  scope :latest , -> {
    find_by_year( ::PassengerSurvey.latest_passenger_survey_year )
  }

  def prior_station_info
    [ station_infos ].flatten.first
  end

end
