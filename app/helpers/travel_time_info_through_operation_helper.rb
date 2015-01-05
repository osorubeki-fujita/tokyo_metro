module TravelTimeInfoThroughOperationHelper

  private

  def travel_time_info_through_operation_h_tobu
    nil
  end

  def travel_time_info_through_operation_h_tobu_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :hibiya_tobu ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "東武スカイツリーライン経由"
    %span{ class: :railway_line }<
      = "東武日光線"
    %span{ class: :destination }<
      = "「南栗橋」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( array: [ [ "東武スカイツリーライン経由" , "東武日光線「南栗橋」まで直通運転" ] ] )
  end

  def travel_time_info_through_operation_t_chuo
    nil
  end

  def travel_time_info_through_operation_t_chuo_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :tozai_chuo ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "JR中央線各駅停車"
    %p{ class: :destination }<
      = "「三鷹」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( "JR中央線各駅停車" ,  "三鷹" )
  end

  def travel_time_info_through_operation_t_sobu_toyo
    nil
  end

  def travel_time_info_through_operation_t_sobu_toyo_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: :through_operation }<
  %td{ colspan: 3 , class: [ :through_operation_info , :tozai_toyo ] }<
    %p{ class: :railway_line }<
      = "東葉高速鉄道線"
    %p{ class: :destination }<
      = "「東葉勝田台」まで直通運転"
  %td{ class: [ :through_operation_info , :tozai_sobu ] }<
    %p{ class: :railway_line }<
      = "JR総武線各駅停車"
    %p{ class: :destination }<
      = "「津田沼」まで直通運転"
    %p{ class: :additional_info }<
      = "直通運転は朝夕のみ"
      HAML
    }
    # travel_time_info_through_operation_info( array: [ [ "東葉高速鉄道線「東葉勝田台」・JR総武線各駅停車「津田沼」まで直通運転" ] ] )
  end

  def travel_time_info_through_operation_c_odakyu
    nil
  end

  def travel_time_info_through_operation_c_odakyu_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :chiyoda_odakyu ] }<
  %td{ colspan: 4 }
    %div{ class: :through_operation_info_box }
      %p{ class: :train_type }<
        = "<多摩急行>"
      %p{ class: :railway_line }<
        = "小田急多摩線"
      %p{ class: :destination }<
        = "「唐木田」まで直通運転"
    %div{ class: :through_operation_info_box }
      %p{ class: :train_type }<
        = "<準急>"
      %p{ class: :railway_line }<
        = "小田急小田原線"
      %p{ class: :destination }<
        = "「本厚木」まで直通運転"
      %p{ class: :additional_info }<
        = "直通運転は朝夕のみ"
    %div{ class: :through_operation_info_box }
      %p{ class: :train_type }<
        = "<特急（ロマンスカー）>"
      %p
        %span{ class: :railway_line }<
          = "小田急多摩線"
        %span{ class: :destination }<
          = "「唐木田」"
        %span
          = "・"
        %span{ class: :railway_line }<
          = "小田急小田原線"
        %span{ class: :destination }<
          = "「本厚木」"
        %span
          = "・"
        %span{ class: :railway_line }<
          = "箱根登山鉄道線"
        %span{ class: :destination }<
          = "「箱根湯本」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( array: [ [ "小田急多摩線「唐木田」・小田急小田原線「本厚木」まで直通運転" ] , [ "特急ロマンスカーは、小田急多摩線「唐木田」・小田急小田原線「本厚木」・" , "箱根登山鉄道線「箱根湯本」まで直通運転" ] ] )
  end

  def travel_time_info_through_operation_c_joban
    nil
  end

  def travel_time_info_through_operation_c_joban_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :chiyoda_joban ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :from }<
      = "<綾瀬から>"
    %p{ class: :railway_line }<
      = "JR常磐線各駅停車"
    %p{ class: :destination }<
      = "「取手」まで直通運転"
    %p{ class: :additional_info }<
      = "取手までの直通運転は朝夕のみ、日中は我孫子まで"
      HAML
    }
    # travel_time_info_through_operation_info( "JR常磐線各駅停車" , "取手" , from: "綾瀬" )
  end

  def travel_time_info_through_operation_z_tokyu
    nil
  end

  def travel_time_info_through_operation_z_tokyu_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :hanzomon_tokyu ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "東急田園都市線"
    %p{ class: :destination }<
      = "「中央林間」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( "東急田園都市線" , "" )
  end

  def travel_time_info_through_operation_z_tobu
    nil
  end

  def travel_time_info_through_operation_z_tobu_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :hanzomon_tobu ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "東武スカイツリーライン経由"
    %p
      %span{ class: :railway_line }<
        = "東武伊勢崎線"
      %span{ class: :destination }<
        = "「久喜」"
      %span
        = "・"
      %span{ class: :railway_line }<
        = "東武日光線"
      %span{ class: :destination }<
        = "「南栗橋」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( array: [ [ "東武スカイツリーライン経由" , "「久喜」・東武日光線「南栗橋」まで直通運転" ] ] )
  end

  def travel_time_info_through_operation_n_tokyu
    nil
  end

  def travel_time_info_through_operation_n_tokyu_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :namboku_tokyu ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "東急目黒線"
    %p{ class: :destination }<
      = "「日吉」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( "東急目黒線" , "日吉" )
  end

  def travel_time_info_through_operation_n_saitama
    nil
  end

  def travel_time_info_through_operation_n_saitama_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :namboku_saitama ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "埼玉高速鉄道線"
    %p{ class: :destination }<
      = "「浦和美園」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( "埼玉高速鉄道線" , "浦和美園" )
  end

  def travel_time_info_through_operation_yf_tobu_seibu
    nil
  end

  def travel_time_info_through_operation_yf_tobu_seibu_info
    Proc.new {
      render inline: <<-HAML , type: :haml
%tr{ class: :through_operation }<
  %td{ colspan: 3 , class: [ :through_operation_info , :yf_seibu ] }<
    %p{ class: :from }<
      = "〈小竹向原から〉"
    %p{ class: :railway_line }<
      = "西武池袋線"
    %p{ class: :destination }<
      = "「飯能」まで直通運転"
  %td{ class: [ :through_operation_info , :yf_tobu ] }<
    %p{ class: :from }<
      = "〈和光市から〉"
    %p{ class: :railway_line }<
      = "東武東上線"
    %p{ class: :destination }<
      = "「森林公園」まで直通運転"
      HAML
    }
    # travel_time_info_through_operation_info( array: [ [ "西武池袋線「飯能」まで直通運転" ] , [ "〈和光市から〉東武東上線「森林公園」まで直通運転" ] ] )
  end

  def travel_time_info_through_operation_f_tokyu_minatomirai
    nil
  end

  def travel_time_info_through_operation_f_tokyu_minatomirai_info
    Proc.new {
    render inline: <<-HAML , type: :haml
%tr{ class: [ :through_operation , :fukutoshin_tokyu_mm ] }<
  %td{ colspan: 4 , class: :through_operation_info }<
    %p{ class: :railway_line }<
      = "東急東横線経由"
    %p{ class: :railway_line }<
      = "みなとみらい線"
    %p{ class: :destination }<
      = "「元町・中華街」まで直通運転"
    HAML
    }
    # travel_time_info_through_operation_info( array: [ [ "東急東横線経由" , "みなとみらい線「元町・中華街」まで直通運転" ] ] )
  end

  def travel_time_info_through_operation_info( railway_line_name = nil , terminal = nil , from: nil , additional_info: nil , array: nil )
    Proc.new {
      if array.present?
        if array.instance_of?( ::String )
          array = array.split( "\n" )
        end
        render inline: <<-HAML , type: :haml , locals: { array: array }
- array.each do | content |
  %tr{ class: :through_operation }<
    %td{ colspan: 4 , class: :through_operation_info }<
      - content.each.with_index(1) do | str , i |
        = str
        - unless i == content.length
          = tag( :br )
        HAML

      else
        travel_time_info_through_operation_info_sub( railway_line_name , terminal , from , additional_info ).call
      end
    }
  end

  def travel_time_info_through_operation_info_sub( railway_line_name = nil , terminal = nil , from = nil , additional_info = nil , text: nil )
    Proc.new {
      if text.present?
        str = "「#{text}」まで直通運転"
      else
        str = String.new
        if from.present?
          str += "〈#{from}から〉"
        end
        str += "#{railway_line_name}「#{terminal}」まで直通運転"
        if additional_info.present?
          str += "（#{additional_info}）"
        end
      end

      render inline: <<-HAML , type: :haml , locals: { str: str }
%tr{ class: :through_operation }
  %td{ colspan: 3 , class: :through_operation_info }<
    = str
      HAML
    }
  end

end