app.controller("ResumeController", function($scope) {
    $scope.sections = [
      { name:'Education', hide: false, filter: "Full-time" },
      { name:'Experience', hide: false, filter: "Full-time" },
      { name:'Skill Sets', hide: false },
      { name:'Additional', hide: false },
      { name:'Map', hide: false } ];

    $scope.toggleVisibility = function(section) {
      for(var i = 0; i < $scope.sections.length; i++) {
        if ( $scope.sections[i].name == section.name) {
          if ( $scope.sections[i].hide == true ) {
            $scope.sections[i].hide = false
          } else {
            $scope.sections[i].hide = true
          }
        }
      }
    };

     $scope.toggleFilter = function( section, filter ) {
      for(var i = 0; i < $scope.sections.length; i++) {
        if ( $scope.sections[i].name == section.name) {
            $scope.sections[i].filter = filter
          }
        }
      };

    $scope.levelsOfDetail = ["Min", "Standard", "Full"]

    $scope.levelOfDetail = "Standard";

    $scope.switchDetail = function(level) {
      $scope.levelOfDetail = level;
    };

});
