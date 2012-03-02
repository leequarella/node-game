(function() {

  exports.GameObject = (function() {

    function GameObject(name, maxHealth) {
      this.name = name;
      this.maxHealth = maxHealth;
      this.status = "Alive";
      this.health = this.maxHealth;
    }

    GameObject.prototype.location = {
      x: 0,
      y: 0
    };

    GameObject.prototype.move = function(x, y) {
      this.location.x += x;
      return this.location.y += y;
    };

    GameObject.prototype.receiveDamage = function(damage) {
      this.health -= damage;
      if (this.health <= 0) return this.status = "Dead";
    };

    GameObject.prototype.gainHealth = function(health) {
      this.health += health;
      if (this.health > this.maxHealth) this.health = this.maxHealth;
      if (this.health >= 0) return this.status = "Alive";
    };

    return GameObject;

  })();

}).call(this);
