
constructeev.controller('NavController', function($scope, channelFactory) {
    $scope.toggle = function() {
        angular.element(sidebar).sidebar('toggle')
    }

    $scope.debugbutton = function(){
        channelFactory.getChannels()
            .success(function (custs) {
                console.log(custs);
                $scope.customers = custs;
            })
            .error(function (error) {
                $scope.status = 'Unable to load customer data: ' + error.message;
            });
        console.log($scope.nav.sec_hash);
    }

    $scope.toggleLoginModal = function(){
        angular.element(loginModal).modal('show')
    }

    $scope.loginAdmin = function (){
        console.log('LoginAdmin hit');
        
    }
})
