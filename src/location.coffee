class exports.Location
  constructor: (@name, @description)->
    @width = Math.floor(Math.random()*11)
    @height = Math.floor(Math.random()*11)
