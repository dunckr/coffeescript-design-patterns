class Car

  constructor: (options) ->
    @doors = options.doors
    @state = options.state
    @color = options.color

class Truck

  constructor: (options) ->
    @state = options.state
    @wheelSize = options.wheelSize
    @color = options.color

class VehicleFactory

  @_vehicleClass: Car

  @createVehicle: (options) ->
    switch options.vehicleType
      when 'car' then @_vehicleClass = Car
      when 'truck' then @_vehicleClass = Truck
    new @_vehicleClass options
