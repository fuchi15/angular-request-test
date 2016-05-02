'use strict';

angular.module('myApp.hoge', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/hoge', {
    templateUrl: 'views/hoge/hoge.html',
    controller: 'HogeCtrl'
  });
}])

.controller('HogeCtrl', [function() {

}]);
