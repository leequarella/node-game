GameObject = require("./game_object").GameObject

class exports.Guy extends GameObject
  inventory: {}
  eat:(object) ->
    if object.edible
      @gainHealth object.healthValue
    else
      @receiveDamage object.healthValue || 1

  receiveInventoryItem: (item) ->
    @inventory[item.id] = item
