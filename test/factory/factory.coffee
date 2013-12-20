describe 'Factory', ->
  vehicle = null

  describe 'has interface for creating Cars', ->
    beforeEach ->
      vehicle = VehicleFactory.createVehicle
              vehicleType: 'car'
              color: 'yellow'
              doors: 6

    it 'should create an object', ->
      expect(vehicle).toBeDefined()

    it 'should be an instance of car', ->
      expect(vehicle instanceof Car).toBeTruthy()

    it 'should have a color', ->
      expect(vehicle.color).toEqual 'yellow'

    it 'should have doors', ->
      expect(vehicle.doors).toEqual 6

  describe 'has interface for creating Trucks', ->
    beforeEach ->
      vehicle = VehicleFactory.createVehicle
              vehicleType: 'truck'
              state: 'like new'
              color: 'red'
              wheelSize: 'small'

    it 'should create an object', ->
      expect(vehicle).toBeDefined()

    it 'should be an instance of car', ->
      expect(vehicle instanceof Truck).toBeTruthy()

    it 'should have state', ->
      expect(vehicle.state).toEqual 'like new'

    it 'should have a color', ->
      expect(vehicle.color).toEqual 'red'

    it 'should have wheelSize', ->
      expect(vehicle.wheelSize).toEqual 'small'
