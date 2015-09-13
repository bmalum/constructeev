//= require_directory .

var app = angular.module('Constructeev', []);

app.controller('MainCtrl', function($scope, $http) {
  $scope.Frontpage_Title = 'Create YOUR own Channel now!';

  $scope.toggle = function() {
    angular.element(sidebar).sidebar('setting', 'transition', 'scale down').sidebar('toggle')
  }
  $scope.login = function(){
  	$http.post('/api/sessions', {sec_hash:'f473d37344f4744cbea7ae735b416037'}).
  then(function(response) {
    console.log(response.data.valid)  	
  }, function(response) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });
  }
});
