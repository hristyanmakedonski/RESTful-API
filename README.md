 Create RESTful API
-------------------------
1. Create project in github
2. No frameworks/libs
3. Write your own router
4. Result should be JSON
5. Work with git till you finish the task
6. Export database in db.sql

Database requirements
MySQL
    - table candidates [id, name, position, created_on]
    - table jobs [id,position,description,craeted_on]
        
Backend requirements
PHP 
    - /jobs/list
    - /jobs/{id}
    - /candidates/list
    - /candidates/review/{id}
    - /candidates/search/{id}


    Example how to test it with jQuery

    Instructions :

    1.  Load jQuery lib
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
 
    2. Executing Ajax requests to our RESTful API

    // Get candidates info
    $.ajax({
           url : "http://localhost/RESTful/candidates/search/2", 
           type : 'get',
           data : {
            },
          
           success : function(data){ 
               
            console.log(data)
           }
       });

       //Change candidate info 
     $.ajax({
           url : "http://localhost/RESTful/candidates/review/2", 
           type : 'put',
           data : {
              'name' : 'George',
              'position' : 'Senior Java developer'
            },
          
           success : function(data){ 
               
            console.log(data)
           }
       });

       //Get lising for jobs
        $.ajax({
           url : "http://localhost/RESTful/jobs/list", 
           type : 'get',
           data : {
              
            },
          
           success : function(data){ 
               
            console.log(data)
           }
       });