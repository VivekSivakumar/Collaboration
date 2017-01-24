var app=angular.module("myApp",['ngRoute','myApp.controllers',
                                'myApp.services'])
                                angular.module("myApp.controllers", []);
  								angular.module("myApp.services", []);
app.config(function($routeProvider){
	console.log('entering configuration')

	
	$routeProvider
	
	.when('/home',{
		templateUrl:'home/home.html'
	})
	.when('/login',{
		controller:'UserController',
		templateUrl:'user/login.html'
	})  
	.when('/allUsers',{
		controller:'Hello',
		templateUrl:'user/allUsers.html'
          })
     .when('/signup',{
    	 	controller:'UserController',
			templateUrl:'user/signup.html'
          })
          
          .when('/blog',{
    	 	controller:'BlogController',
			templateUrl:'blog/blog.html'
          })
          
          .when('/allBlog',{
        	controller:'Blog',
			templateUrl:'blog/allBlog.html'
          })

           .when('/forum',{
    	 	controller:'ForumController',
			templateUrl:'forum/forum.html'
          })
          
           .when('/allForums',{
            controller:'Forum',
		    templateUrl:'forum/allForums.html'
          })
          
          .when('/forumpage',{
            controller:'ForumSingle',
		    templateUrl:'forum/forumpage.html'
          })
          
          .when('/ind',{
        	controller:'ChatCtrl',
		    templateUrl:'chat/ind.html'
          })

          
          
	console.log('Entering in app')
	
}

)

app.controller('Blog', function($scope, $http) {
    $http.get('http://localhost:8096/Collabbackend/allBlog').
        then(function(response) {
        	console.log('Entering bloglist')
            $scope.blog = response.data;
        	console.log($scope.blog)
        	console.log("list of blogs")
        });
});

app.controller('Forum', function($scope, $http) {
    $http.get('http://localhost:8096/Collabbackend/allFor').
        then(function(response) {
        	console.log('Entering forumlist')
            $scope.forum = response.data;
        	console.log($scope.forum)
        	console.log("list of forums")
        });
});

app.controller('ForumSingle', function($scope, $http) {
    $http.get('http://localhost:8096/Collabbackend/forumpage/{id}').
        then(function(sin) {
        	console.log('Entering singleforum')
            $scope.foru = sin.data;
        	console.log($scope.foru)
        	console.log("single forum")
        });
});