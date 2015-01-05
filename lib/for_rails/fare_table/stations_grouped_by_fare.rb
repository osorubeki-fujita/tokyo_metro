module ForRails::FareTable::StationsGroupedByFare

  def fare_table_stations_grouped_by_fare( fares )
    ary = ::Array.new
    normal_fare_group_id_now = nil
    hash_now = nil

    for i in 0..( self.length - 1 )
      station = self[i]
      fare = fares.find_by( to_station_id: station.id )

      # fare , normal_fare_group_id が存在しない場合は、normal_fare_group_id を便宜上 0 とする。
      if fare.nil?
        normal_fare_group_id = 0
      else
        normal_fare_group_id = fare.normal_fare_group_id
        if normal_fare_group_id.nil?
          normal_fare_group_id = 0
        end
      end

      # 運賃グループの最初の要素
      unless normal_fare_group_id_now ==  normal_fare_group_id
        unless hash_now.nil?
          ary << hash_now
        end
        hash_now = { :normal_fare_group_id => normal_fare_group_id , :stations => [ station ] }
        normal_fare_group_id_now = normal_fare_group_id

      # 運賃グループの最初の要素ではない場合（前の駅の続きの場合）
      else
        hash_now[ :stations ] << station
      end
      # 最後の駅の処理
      if i == ( self.length - 1 )
        ary << hash_now
      end

    end
    ary
  end

end