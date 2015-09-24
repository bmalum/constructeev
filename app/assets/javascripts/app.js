var constructeev = angular.module('constructeev', ['ui.router']);

constructeev.config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/home');
    
    $stateProvider

        // HOME STATES AND NESTED VIEWS ========================================
        .state('home', {
            url: '/home',
            templateUrl: '/templates/partial_home.html',
        })
        .state('home.signupform', {
            templateUrl: '/templates/home_signup_form.html'
        })
        // ABOUT PAGE AND MULTIPLE NAMED VIEWS =================================
        .state('about', {
            // we'll get to this in a bit       
        });
        
    });

constructeev.controller('NavController', function($scope){
	$scope.toggle = function(){
		angular.element(sidebar).sidebar('toggle')
	}	
})

constructeev.controller('HomeController', function($scope, $http, $state){
  $state.transitionTo('home.signupform');
  $scope.sendSignUp = function(signUpModel, $scope){
    requestData = JSON.stringify({"channel": signUpModel});
    console.log(requestData);

    $http.post('/api/channels', requestData).
    then(function(response) {
        console.log(response.data)  	
    }, function(response) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
});
}
})

constructeev.directive('includeReplace', function () {
    return {
        require: 'ngInclude',
        restrict: 'A', /* optional */
        link: function (scope, el, attrs) {
            el.replaceWith(el.children());
        }
    };
});
