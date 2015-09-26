var constructeev = angular.module('constructeev', ['ui.router']);

constructeev.config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/home/signupform');
    //$urlRouterProvider.when('/home', '/home/signupform');

    $stateProvider
    // HOME STATES AND NESTED VIEWS ========================================
        .state('home', {
            url: '/home',
            controller: 'HomeController',
            templateUrl: '/templates/partial_home.html',
        })
        .state('home.signupform', {
            url: '/signupform',
            templateUrl: '/templates/home_signup_form.html'
        })
        .state('home.loader', {
            url: '/loader',
            templateUrl: '/templates/home_signup_loader.html'
        })
        .state('home.error', {
            url: '/error',
            templateUrl: '/templates/home_signup_error.html'
        })
        .state('home.success', {
            url: '/success',
            templateUrl: '/templates/home_signup_success.html'
        })
        // ABOUT PAGE AND MULTIPLE NAMED VIEWS =================================
        .state('about', {
            // we'll get to this in a bit       
        });

});

constructeev.directive('includeReplace', function() {
    return {
        require: 'ngInclude',
        restrict: 'A',
        /* optional */
        link: function(scope, el, attrs) {
            el.replaceWith(el.children());
        }
    };
})

.run(function($templateCache){ 
    $templateCache.get('/templates/home_signup_loader.html');
    console.log('in TempCache');
  });