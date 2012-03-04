Location = require('./location').Location
Guy = require('./guy').Guy

class exports.World
  constructor: (@number_of_locations, @number_of_guys) ->
    @locations = []
    i = 0
    while i < number_of_locations
      loc = new Location("NAME", "DESCRIPTION")
      @locations.push loc
      i += 1

    @guys = []
    i = 0
    while i < number_of_guys
      guy = new Guy("NAME", 100)
      @guys.push guy
      i += 1
