class Vehicle

  constructor: (vehicleType) ->
    @vehicleType = vehicleType ? 'car'
    @model = 'default'
    @license = '00000-000'

  toString: ->
    "#{@vehicleType}: #{@model}, #{@license}"
