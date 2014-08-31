app.controller("ResumeController", function($scope) {
    $scope.sections = [
      { name:'Education', hide: false },
      { name:'Experience', hide: false },
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
    }

});
