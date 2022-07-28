var app = angular.module('dashboardApp', []);

app.controller("dashboardController", ['$scope','$http', function($scope, $http) {

  $scope.init = function() {
    $scope.showDisciplines = false;
  }

  $scope.dislayDisciplines = function(bool, load_id) {
    $scope.loadId = load_id
    $scope.showDisciplines = bool;
  }

  // $scope.getDisciplines = function() {
  //   $http({
  //     method : "GET",
  //     url : "/home/get_disciplines",
  //     responseType: "json"
  //   }).then(function success(response) {
  //     $scope.disciplines = response.data;
  //   }, function error(error) {
  //     console.log(error);
  //     alert(error.data);
  //   });
  // }

}]); 


// $(".add-group").on('click', function() {
//   var domId = $(this).id;
//   var arr = domId.split("-")
//   var loadId = arr[arr.length - 1];
//   // var newGroupLoadId = "create-new-group-" + loadId;
//   $('#create-new-group-' + loadId).show()
// })