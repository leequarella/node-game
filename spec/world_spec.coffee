World = require("../src/world").World

describe "World: ", ->
  it "initiallizes", ->
    number_of_locations = 3
    number_of_guys = 4
    world = new World(number_of_locations, number_of_guys)
    expect(world.locations.length).toEqual number_of_locations
    expect(world.guys.length).toEqual number_of_guys

