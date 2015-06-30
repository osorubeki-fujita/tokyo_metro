def train_operation_and_location_infos( railway_line , access_token )
    puts Time.now.to_s

    response = HTTPClient.new.get( "https://api.tokyometroapp.jp/api/v2/datapoints" , { "rdf:type" => "odpt:TrainInformation" , "odpt:railway" => "odpt.Railway:TokyoMetro.#{ railway_line }" , "acl:consumerKey"=> access_token } )
    puts JSON.parse( response.body ).to_s

    response = HTTPClient.new.get( "https://api.tokyometroapp.jp/api/v2/datapoints" , { "rdf:type" => "odpt:Train" , "odpt:railway" => "odpt.Railway:TokyoMetro.#{ railway_line }" , "acl:consumerKey"=> access_token } )
    puts JSON.parse( response.body ).to_s
end

namespace :temp do
  desc "TrainLocation infos on Hanzomon Line"
  task :train_location_infos_on_hanzomon_line_20150625 do
    require 'httpclient'
    require 'json'

    Encoding.default_external = "utf-8"

    ACCESS_TOKEN = ENV[ 'ACCESS_TOKEN' ]
    train_operation_and_location_infos( "Hanzomon" , ACCESS_TOKEN )
  end

  desc "TrainLocation infos on Hbiya Line"
  task :train_location_infos_on_hibiya_line_20150630 do
    require 'httpclient'
    require 'json'

    Encoding.default_external = "utf-8"

    ACCESS_TOKEN = ENV[ 'ACCESS_TOKEN' ]
    train_operation_and_location_infos( "Hibiya" , ACCESS_TOKEN )
  end
end

__END__


2015-06-25 08:17:56 +0900
[
  {
    "@context"=>"http://vocab.tokyometroapp.jp/context_odpt_TrainInformation.json",
    "@id"=>"urn:ucode:_00001C000000000000010000030C3BE5",
    "dc:date"=>"2015-06-25T08:15:02+09:00",
    "dct:valid"=>"2015-06-25T08:20:02+09:00",
    "odpt:operator"=>"odpt.Operator:TokyoMetro",
    "odpt:railway"=>"odpt.Railway:TokyoMetro.Hanzomon",
    "odpt:timeOfOrigin"=>"2015-06-25T07:14:00+09:00",
    "odpt:trainInformationStatus"=>"ダイヤ乱れ",
    "odpt:trainInformationText"=>"6時35分頃、東急田園都市線 たまプラーザ駅で人身事故のため、ダイヤが乱れています。この影響で女性専用車両を中止しています。只今、東京メトロ線、都営地下鉄線、ＪＲ線、東武線に振替輸送を実施しています。詳しくは、駅係員にお尋ねください。",
    "@type"=>"odpt:TrainInformation"
  }
]
[]

2015-06-30 18:25:28 +0900
[{"@context"=>"http://vocab.tokyometroapp.jp/context_odpt_TrainInformation.json", "@id"=>"urn:ucode:_00001C000000000000010000030C3BE6", "dc:date"=>"2015-06-30T18:25:02+09:00", "dct:valid"=>"2015-06-30T18:30:02+09:00", "odpt:operator"=>"odpt.Operator:TokyoMetro", "odpt:railway"=>"odpt.Railway:TokyoMetro.Hibiya", "odpt:timeOfOrigin"=>"2015-06-30T17:47:00+09:00", "odpt:trainInformationStatus"=>"折返し運転", "odpt:trainI
nformationText"=>"17時26分頃、築地駅で人身事故のため、折返し運転を行っています。全線での運転再開は、18時30分頃を見込んでいます。折返し運転区間　北千住〜八丁堀駅間　霞ケ関〜中目黒駅間只今、東京メトロ線、都営地下鉄線、ＪＲ線、東急線、東武線、京成線、つくばエクスプレス線に振替輸送を実施しています。詳しくは、駅係員にお尋ねください。", "@type"=>"odpt:TrainInformation"}]
[]
