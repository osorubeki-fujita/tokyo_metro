class OnPageLoadHandler

  list = (v) ->

    ary = []

    #---- header

    header = new Header()
    ary.push header

    #---- document

    document = new Document()
    ary.push document

    #---- concerns (1)

    railway_line_matrixes = new RailwayLineMatrixes()
    station_matrixes = new StationMatrixes()
    railway_line_codes = new RailwayLineCodes()

    ary.push railway_line_matrixes
    ary.push station_matrixes
    ary.push railway_line_codes

    #---- controllers

    railway_line = new RailwayLine()
    station_timetables = new StationTimetables()
    station_facility = new StationFacility()
    passenger_survey = new PassengerSurvey()
    fare_table = new FareTables()

    ary.push railway_line
    ary.push station_timetables
    ary.push station_facility
    ary.push passenger_survey
    ary.push fare_table

    train_operation_infos = new TrainOperationInfos()
    train_location_infos = new TrainLocationInfos()

    ary.push train_operation_infos
    ary.push train_location_infos

    #---- concerns (2)

    links_to_station_info_pages = new LinksToStationInfoPages()
    selection_header_processor = new SelectionHeaderProcessor()
    real_time_info_processor = new RealTimeInfoProcessor()
    twitters_processor = new TwittersProcessor()
    now_developing_processor = new NowDevelopingProcessor()
    problems_processor = new NowDevelopingProcessor( $( '#problems' ) )
    ul_side_menu_links = new UlSideMenuLinks()
    ul_station_related_links = new UlStationRelatedLinks()

    ary.push links_to_station_info_pages
    ary.push selection_header_processor
    ary.push real_time_info_processor
    ary.push twitters_processor
    ary.push now_developing_processor
    ary.push problems_processor
    ary.push ul_side_menu_links
    ary.push ul_station_related_links

    return ary

  process: ->
    $.each list(@) , ->
      @.process()
      return
    set_geo_location_info(@)
    return

  set_geo_location_info = (v) ->
    g = new GeoLocationProcessor()
    g.set_info()
    return

# Turbolinks 対策
# [NG] $ ->
# [NG] $( document ).live 'pageshow', ->
# [OK] $( document ).on 'ready page:load' , ->

$( document ).on 'ready page:load' , ->
  h = new OnPageLoadHandler()
  h.process()
  return
