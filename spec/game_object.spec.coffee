GameObject = require("../src/game_object").GameObject

describe "Game Object", ->
  obj = new GameObject("Lee", 100)
  
  it "is created with a name and health", ->
    expect(obj.name).toEqual("Lee")
    expect(obj.maxHealth).toEqual(100)

  it "moves along both axis", ->
    obj.move(4, 2)
    expect(obj.location.x).toEqual 4
    expect(obj.location.y).toEqual 2

  it "takes damage when hit", ->
    obj.receiveDamage(10)
    expect(obj.health).toEqual(90)

  it "takes gains health", ->
    obj.gainHealth(10)
    expect(obj.health).toEqual(100)
  
  it "dies if health is 0", ->
    obj.receiveDamage(obj.health)
    expect(obj.status).toEqual "Dead"

  it "cannot regain health past it's max", ->
    obj.gainHealth(obj.maxHealth + 1)
    expect(obj.health).toEqual obj.maxHealth
