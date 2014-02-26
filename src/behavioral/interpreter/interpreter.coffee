class Interpreter

  parseString: (string) ->
    @stack = []
    @parseToken token for token in string.split /\s+/
    @stack[0]

  parseToken: (token, lastNumber) ->
    if isNaN(parseFloat(token))
      @parseOperation token
    else
      @stack.push parseFloat(token)

  parseOperation: (operator) ->
    right = @stack.pop()
    left = @stack.pop()

    result = switch operator
      when '+' then left + right
      when '-' then left - right
    @stack.push result
