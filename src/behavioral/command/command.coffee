class CarManager

  @requestInfo: (model, id) ->
    "The information for #{model} with ID #{id} is foobar"

  @buyVehicle: (model, id ) ->
    "You have successfully purchased Item #{id}, a #{model}"

  @arrangeViewing: (model, id) ->
    "You have successfully booked a viewing of #{model} ( #{id} )"

  @execute: (args...) ->
    @[args[0]].apply @, [].slice.call args,1
