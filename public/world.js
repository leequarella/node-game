(function() {
  var Guy, Location;

  Location = require('./location').Location;

  Guy = require('./guy').Guy;

  exports.World = (function() {

    function World(number_of_locations, number_of_guys) {
      var guy, i, loc;
      this.number_of_locations = number_of_locations;
      this.number_of_guys = number_of_guys;
      this.locations = [];
      i = 0;
      while (i < number_of_locations) {
        loc = new Location("NAME", "DESCRIPTION");
        this.locations.push(loc);
        i += 1;
      }
      this.guys = [];
      i = 0;
      while (i < number_of_guys) {
        guy = new Guy("NAME", 100);
        this.guys.push(guy);
        i += 1;
      }
    }

    return World;

  })();

}).call(this);
