constructeev.factory('sessionFactory', ['$http', function($http) {

    var urlBase = '/api/sessions';
    var sessionFactory = {};

    sessionFactory.getChannels = function () {
        return $http.get(urlBase);
    };

    sessionFactory.authentificated? = function (id) {
        return $http.get(urlBase + '/' + id);
    };

    sessionFactory.authentificate = function (cust) {
        return $http.post(urlBase, cust);
    };

    sessionFactory.destroySession = function (id) {
        return $http.delete(urlBase + '/' + id);
    };

    return channelFactory;
}]);
