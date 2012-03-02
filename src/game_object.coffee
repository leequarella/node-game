class exports.GameObject
  constructor: (@name, @maxHealth) ->
    @status = "Alive"
    @health = @maxHealth

  location:
    x: 0
    y: 0

  move: (x, y) ->
    @location.x += x
    @location.y += y

  receiveDamage: (damage) ->
    @health -= damage
    @status = "Dead" if @health <= 0

  gainHealth: (health) ->
    @health += health
    @health = @maxHealth if @health > @maxHealth
    @status = "Alive" if @health >= 0
