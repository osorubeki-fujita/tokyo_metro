# 駅施設情報 odpt:StationFacility のバリアフリー施設情報を扱うクラスのリスト（ハンドル型電動車いす利用可能経路）
module TokyoMetro::ClassNameLibrary::Api::StationFacility::BarrierFree::Link

  extend ::ActiveSupport::Concern

  module ClassMethods

    def info_class
      ::TokyoMetro::Api::StationFacility::Info::BarrierFree::Facility::Link::Info
    end

    def factory_for_generating_from_hash
      ::TokyoMetro::Factories::Api::GenerateFromHash::StationFacility::Info::BarrierFree::Facility::Link
    end

    # @!group クラスメソッド (1) - メタデータ

    # クラス指定 - ug:Link
    # @return [String]
    def rdf_type
      "ug:Link"
    end

    # カテゴリの名称
    # @return [String]
    def category_name
      "ハンドル型電動車いす利用可能経路"
    end

    def category_name_en
      "Link for mobility scooters"
    end

    # 利用可能な車いす（ハンドル型電動車いす）の情報
    # @return [String]
    def spac__is_available_to
      "spac:MobilityScooter"
    end

    # @!endgroup

  end

end