class Meta

  constructor: ->
    for key,val in ['one','two','three']
      do (key,val) =>
        @[@_getter(key)] = -> val+1

  _getter: (name) -> "get#{name[0].toUpperCase()}#{name[1..]}"
