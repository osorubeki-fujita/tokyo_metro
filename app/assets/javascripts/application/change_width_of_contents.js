function changeAttrOfStationFacility() {
  var railway_line_titles = $( '.tokyo_metro_railway_lines , .connecting_railway_lines' ) ;
  // changeWidthOfRailwayLineDomain( railway_line_titles ) ;
}

function changeWidthOfRailwayLineDomain( blocks ) {
  var max_width_of_title = 0 ;
  var max_height_of_railway_line_domain = 0 ;
  var width_of_railway_line_domain = 0 ;
  var width_of_railway_line_name_domain = 0 ;

  // タイトルの幅をあわせ、路線名リストの幅を取得
  blocks.each( function() {
    var railway_line_domain = $( this ) ;
    var title_domain = railway_line_domain.children( '.title' ).first() ;
    max_width_of_title = Math.max( max_width_of_title , title_domain.width() ) ;
    max_height_of_railway_line_domain = Math.max( max_height_of_railway_line_domain , title_domain.height() ) ;
    width_of_railway_line_domain = Math.max( width_of_railway_line_domain , railway_line_domain.width() ) ;

    width_of_railway_line_name_domain = title_domain.innerWidth() ;
  });

  blocks.each( function() {
    var railway_line_domain = $( this ) ;
    var title_domain = railway_line_domain.children( '.title' ).first() ;
    var railway_line_name_domain = railway_line_domain.children( '.railway_lines' ).first() ;
    railway_line_domain.css( 'width' , width_of_railway_line_domain ) ;
    title_domain.css( 'width' , max_width_of_title ) ;
    railway_line_name_domain.css( 'width' , width_of_railway_line_name_domain ) ;
  });
}