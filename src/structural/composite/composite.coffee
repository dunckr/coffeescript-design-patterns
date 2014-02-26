class Task
  constructor: (@name) ->
  getTimeRequired: -> 0

class AddDryIngredientsTask extends Task
  constructor: -> super 'Add dry ingredients'
  getTimeRequired: -> 1

class AddLiquidsTask extends Task
  constructor: -> super 'Add liquids'
  getTimeRequired: -> 2

class MixTask extends Task
  constructor: -> super 'Mix ingredients'
  getTimeRequired: -> 3

class CompositeTask extends Task
  constructor: (name) ->
    super name
    @subTasks = []

  addSubTask: (task) -> @subTasks.push task

  getTimeRequired: ->
    time = 0
    time += task.getTimeRequired() for task in @subTasks
    time

class MakeBatterTask extends CompositeTask
  constructor: ->
    super 'Make Batter'
    @addSubTask new AddDryIngredientsTask()
    @addSubTask new AddLiquidsTask()
    @addSubTask new MixTask()

class MakeCakeTask extends CompositeTask
  constructor: ->
    super 'Make Cake'
    @addSubTask new MakeBatterTask()
