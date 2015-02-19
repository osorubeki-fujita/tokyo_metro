module OperatorRailwayLineStationCodeHelper

  def color_box( small: false )
    render inline: <<-HAML , type: :haml , locals: { class_name: color_box_class_name( small ) }
%div{ class: class_name }<
    HAML
  end
  
  alias :oprator_color_box :color_box
  
  def color_box_class_name( small )
    if small
      :color_box_32
    else
      :color_box_48
    end
  end
  private :color_box_class_name

  def railway_line_code( railway_line , must_display_line_color: true , small: false , letter: nil )
    if small
      class_name = :railway_line_code_32
    else
      class_name = :railway_line_code_48
    end

    if railway_line.nil? and letter.present?
      letter = letter
    elsif railway_line.name_code.instance_of?( ::String )
      letter = railway_line.name_code
    else
      letter = nil
    end

    h_locals = {
      letter: letter ,
      must_display_line_color: must_display_line_color ,
      class_name: class_name ,
      letter: letter ,
      small: small
    }
    render inline: <<-HAML , type: :haml , locals: h_locals
- if letter.present?
  %div{ class: class_name }<
    %p<
      = letter
- elsif must_display_line_color
  = color_box( small: small )
- else
  %div{ class: class_name }<
    HAML
  end

end