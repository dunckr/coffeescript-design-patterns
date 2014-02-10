class Subject

  constructor: -> @observers = []

  addObserver: (observer) ->  @observers.push observer

  deleteObserver: (observer) ->
    for value, elem in @observers
      @observers.splice elem, 1 if observer is value

  notifyObservers: ->
    observer.update @ for observer in @observers

class Employee extends Subject

  constructor: (@name, @title, @subject) ->
    super

  setSalary: (newSalary) ->
    @salary = newSalary
    @notifyObservers()

class TaxMan
  update: (changedEmployee) ->
    "Send #{changedEmployee.name} a new tax bill"
