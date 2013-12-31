describe 'Factory', ->
  vehicle = null

  describe 'has interface for creating Trucks', ->
    beforeEach ->
      vehicle = TruckFactory.createVehicle
        state: 'omg..so bad'
        color: 'pink'
        wheelSize: 'so big'

    it 'should create an object', ->
      expect(vehicle).toBeDefined()

    it 'should be an instance of car', ->
      expect(vehicle instanceof Truck).toBeTruthy()

    it 'should have state', ->
      expect(vehicle.state).toEqual 'omg..so bad'

    it 'should have a color', ->
      expect(vehicle.color).toEqual 'pink'

    it 'should have wheelSize', ->
      expect(vehicle.wheelSize).toEqual 'so big'
