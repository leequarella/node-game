Guy = require("../src/guy").Guy

describe "Guy", ->
  guy = new Guy("Lee", 100)

  it "regains health when eating edible items", ->
    guy.receiveDamage(1) #because of max health
    goldfish =
      healthValue: 1
      edible: true
    guy.eat(goldfish)
    expect(guy.health).toEqual 100

  it "loses health from non-edible items", ->
    dvd =
      edible: false
    guy.eat(dvd)
    expect(guy.health).toEqual 99

  it "can receive an item", ->
    item =
      name: "Apple"
    guy.receiveInventoryItem(item)
    expect(guy.inventory[item.id].name).toEqual(item.name)
