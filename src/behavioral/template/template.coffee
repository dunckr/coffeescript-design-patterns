class Report

  constructor: ->
    @title = 'MonthlyReport'
    @text = ['Things are going', 'Really well']

  outputReport: ->
    @outputStart() +
    @outputTitle @title +
    @outputBodyStart() +
    @outputBody(@text) +
    @outputEnd()

  outputStart: ->
    '<html>'

  outputTitle: (title) ->
    "
    <head>
      <title>#{title}</title>
    </head>
    "

  outputBodyStart: ->
    "<body>"

  outputBody: (text) ->
    for line in text
      @outputLine line

  outputLine: (line) ->
    "#{line}"

  outputEnd: ->
    "
      </body>
    </html>
    "
