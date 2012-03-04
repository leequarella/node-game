(function() {

  exports.Location = (function() {

    function Location(name, description) {
      this.name = name;
      this.description = description;
      this.width = Math.floor(Math.random() * 11);
      this.height = Math.floor(Math.random() * 11);
    }

    return Location;

  })();

}).call(this);
