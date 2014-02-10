class StrategyReport

  constructor: (@formatter) ->
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well']

  outputReport: ->
    @formatter.outputReport @

class HTMLFormatter
  outputReport: (context) ->
    "
    <html>
      <title>#{context.title}</title>
    </html>
    "

class PlainTextFormatter
  outputReport: (context) ->
    "******#{context.title}*****"
