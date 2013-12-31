describe 'Decorator', ->

  vehicle = new Vehicle()
  truck = new Vehicle 'truck'

  it 'should have default vehicle', ->
    expect(vehicle.toString()).toEqual 'car: default, 00000-000'

  it 'should be able to decorate truck', ->
    truck.setModel = (modelName) ->
      @model = modelName
    truck.setLicense = (license) ->
      @license = license

    truck.setModel 'CAT'
    truck.setLicense '00000-010'
    expect(truck.toString()).toEqual 'truck: CAT, 00000-010'

  it 'should have no effect on vehicle', ->
    expect(truck.toString()).toEqual 'truck: CAT, 00000-010'
    expect(vehicle.toString()).toEqual 'car: default, 00000-000'
