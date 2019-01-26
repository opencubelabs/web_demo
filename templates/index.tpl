<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OCL Web Demo | Home</title>

    <link rel="shortcut icon" href="http://ocl.space/assets/img/favicon.ico">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <script type="text/javascript">
      function del_pic(oid_data){
        document.getElementById(oid_data).style.display = 'none';
        $(document).ready(function(){
          $.get('/del/'+oid_data, function(data){
            console.log(data);
            //window.location = '/';
          })
        })
      }
    </script>

    <link rel="manifest" href="/manifest">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top" style="box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">
      <div class="container">
        <a class="navbar-brand" href="/" style="color: #2d2d2d;">
          <img src="https://opencubelabs.com/img/ocl_logo.svg" style="height: 30px;">
          <!-- Logo Here -->
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="fa fa-bars"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="/add">Add Data</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <section id="steps" style="padding-top: calc(2rem + 55px);">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h1>Image Data</h1>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row" style="margin-top: 25px; margin-bottom: 25px;">

          % for x in res:
            <div class="col-md-4" id="{{x['_id']['$oid']}}" style="margin-top: 15px; display: block;">
              <div style="background-color: #fff; width: 100%; border-radius: 25px 0px 25px 0px;; box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24); padding: 5px;">
                <img src="{{x['img']}}" style="width: 100%; border-radius: 25px 0px 25px 0px;">

                <div style="padding-left: 10px; padding-top: 5px;">
                  <h4>{{x['name']}} <i class="fa fa-trash-o" style="font-size: 1.2em; color:red; margin-right: 10px;" onclick="del_pic('{{x['_id']['$oid']}}')"></i></h4>
                </div>
              </div>
            </div>
          % end       

        </div>
      </div>
    </section>


    <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>

  </body>

</html>
