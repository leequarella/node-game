Location = require("../src/location").Location

describe "Location: ", ->
  it "initiallizes", ->
    name = "Awesome Name"
    description = "Lengthy Description"
    loc = new Location(name, description)
    expect(loc.name).toEqual name
    expect(loc.description).toEqual description
    expect(loc.width).toBeDefined()
    expect(loc.height).toBeDefined()
