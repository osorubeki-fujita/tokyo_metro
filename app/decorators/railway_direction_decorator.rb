class RailwayDirectionDecorator < Draper::Decorator
  delegate_all
  decorates_association :station

  def render_in_station_timetable_header
    h.render inline: <<-HAML , type: :haml , locals: { info: self }
%div{ class: :direction }<
  = info.station.render_direction_in_station_timetable_header
    HAML
  end

  def render_in_station_facility_platform_info_transfer_info
    h.render inline: <<-HAML , type: :haml , locals: { info: self }
= info.station.render_name_ja( with_subname: false , suffix: "方面" )
    HAML
  end
  
  def render_in_document
    h.render inline: <<-HAML , type: :haml , locals: { info: self }
- station = info.station
%div{ class: :document_info_box_normal }
  %div{ class: :text_ja }<
    = station.name_ja
  %div{ class: :text_en }<
    = station.name_en
    HAML
  end

end