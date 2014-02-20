class AwesomeGrid

  constructor: (@datasource) ->
    @sortOrder = 'ASC'
    @sorter = new NullSorter()

  setCustomSorter: (@customSorter) ->
    @sorter = customSorter

  sort: ->
    @datasource = @sorter.sort @datasource, @sortOrder

class NullSorter

  sort: (data, order) -> data

class ReverseSorter

  sort: (data, order) ->
    for i in [0...data.length/2]
      [data[i],data[data.length-i-1]] = [data[data.length-i-1],data[i]]
    data

class RandomSorter

  sort: (data) ->
    for i in [data.length-1..1]
      j = Math.floor Math.random() * (i + 1)
      [data[i], data[j]] = [data[j], data[i]]
    data

class RandomSorterAdapter

  constructor: (@sorter) ->

  sort: (data, order) ->
    @sorter.sort data
