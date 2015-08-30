//= require_directory .

var app = angular.module('Constructeev', []);

app.controller('MainCtrl', function($scope) {
  $scope.Frontpage_Title = 'Create YOUR own Channel now!';

  $scope.toggle = function() {
    angular.element(sidebar).sidebar('setting', 'transition', 'scale down').sidebar('toggle')
  }
});
