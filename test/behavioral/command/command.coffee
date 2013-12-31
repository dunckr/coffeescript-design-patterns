describe 'Command', ->

  it 'should be able to execute arrangeViewing', ->
    result = CarManager.execute( "arrangeViewing", "Ferrari", "14523" )
    expect(result).toEqual "You have successfully booked a viewing of Ferrari ( 14523 )"

  it 'should be able to execute requestInfo', ->
    result = CarManager.execute( "requestInfo", "Ford Mondeo", "54323" )
    expect(result).toEqual "The information for Ford Mondeo with ID 54323 is foobar"

  it 'should be able to execute requestInfo', ->
    result = CarManager.execute( "requestInfo", "Ford Escort", "34232" )
    expect(result).toEqual "The information for Ford Escort with ID 34232 is foobar"

  it 'should be able to execute buyVehicle', ->
    result = CarManager.execute( "buyVehicle", "Ford Escort", "34232" )
    expect(result).toEqual "You have successfully purchased Item 34232, a Ford Escort"
