(function() {
  var GameObject,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  GameObject = require("./game_object").GameObject;

  exports.Guy = (function(_super) {

    __extends(Guy, _super);

    function Guy() {
      Guy.__super__.constructor.apply(this, arguments);
    }

    Guy.prototype.inventory = {};

    Guy.prototype.eat = function(object) {
      if (object.edible) {
        return this.gainHealth(object.healthValue);
      } else {
        return this.receiveDamage(object.healthValue || 1);
      }
    };

    Guy.prototype.receiveInventoryItem = function(item) {
      return this.inventory[item.id] = item;
    };

    return Guy;

  })(GameObject);

}).call(this);
