constructeev.controller('HomeController', ['$scope', '$http', '$state', function($scope, $http, $state){
    // Change State to in Home to Sign Up Form
    $state.transitionTo('home.signupform');
    $scope.channel = true
    var tmp_channel_data
    // SignUp Function
    $scope.transition  = function(){
            $state.transitionTo('home.signupform');
    }

    $scope.sendSignUp = function(signUpModel) {
        // Change State to in Home to Sign Up Form
        $state.transitionTo('home.loader');
        requestData = JSON.stringify({
            "channel": signUpModel
        });

        console.log(requestData);

        $http.post('/api/channels', requestData)
            .then(
                function(response) {
                    console.log(response.data)
                    tmp_channel_data = response.data
                    $scope.channel = response.data
                    $state.transitionTo('home.success')
                },
                function(response) {
                    console.log("Error Occured!");
                    $state.transitionTo('home.error')
                });

        }
}]);