class DSL

  constructor: (data) ->
    @count = 0
    @_parser data if data?

  _parser: (data) ->
    for line,command of data.split '\n'
      @_runCommand command.split ' '

  _runCommand: (command) ->
    @[command[0]].apply command[0], command[1..]

  add: (numbers...) =>
    @count += Number number for number in numbers

