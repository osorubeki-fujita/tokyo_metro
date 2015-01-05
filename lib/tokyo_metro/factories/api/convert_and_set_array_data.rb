# 配列のデータを JSON のハッシュから変換するための Factory Pattern のクラス
class TokyoMetro::Factories::Api::ConvertAndSetArrayData

  def initialize( h , key_str , list_class , info_class , generate_info_instance , to_flatten )
    if generate_info_instance and info_class.nil?
      raise "Error"
    end
    @info_list = set_info_list( h , key_str , to_flatten )

    @list_class = set_list_class( list_class )
    @info_class = info_class
    @generate_info_instance = generate_info_instance
  end

  def generate
    #puts @info_class.name
    #puts ""
    if @generate_info_instance
      # inspect_info_of_list
      ary_new = @list_class.new
      @info_list.each do | info |
        ary_new << @info_class.generate_from_hash( info )
      end
      ary_new
    else
      @list_class.new( @info_list )
    end
  end

  def self.process( h , key_str , list_class , info_class , generate_info_instance , to_flatten )
    self.new( h , key_str , list_class , info_class , generate_info_instance , to_flatten ).generate
  end

  private

  def set_info_list( h , key_str , to_flatten )
    ary = h[ key_str ]
    if ary.blank?
      ary = ::Array.new
    end
    ary = check_validity_and_convert( ary , to_flatten )
    return ary
  end

  def check_validity_and_convert( ary , to_flatten )
    if to_flatten and ary.instance_of?( ::Array )
      # 配列の要素に配列が存在する場合（≒2次元配列の場合）
      if ary.any? { | element | element.instance_of?( ::Array ) }
        inspect_info_of_two_dimensional_array( ary )
      end
      ary = ary.flatten
    end
    ary
  end

  def set_list_class( list_class )
    if list_class.nil?
      ::Array
    else
      list_class
    end
  end

  def inspect_info_of_two_dimensional_array( ary )
    inspect_ary = ary.map { | element |
      if element.instance_of?( ::Array )
        "::Array (#{ element.length })"
      else
        element.length
      end
    }
    puts "○ Two Dimensional Array (length: #{ ary.length })"
    puts inspect_ary.to_s
    puts "" * 2
  end

  def inspect_info_of_list
    puts "---- Array: #{ @list_class.name }"
    puts "---- Info: #{ @info_class.name }"
    puts "---- Value: #{ @info_list.class.name }"
  end

end