<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>Employee</title>
<link rel="icon" href="images/icon.ico">
<link href='fonts/fonts.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
<!--animate-->
<link rel="stylesheet" type="text/css" href="iziToast-master/dist/css/iziToast.css"> 
<link rel="stylesheet" href="css/normalize.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<!--iziToast-->
<script src="iziToast-master/dist/js/iziToast.js"> </script>
<script src="js/jquery.js"> </script>
<script src="js/login-ajax.js"></script>
<script src="js/admin-settings.js"> </script>

<style>
	body { overflow: hidden; background-image: url(images/background.png); }
	.container { position: relative; top: 100px; }
	#mushroombg { position: absolute; top: 190px; z-index: 1; right: -350px;}
	#btnBack { position: absolute; top: -90px; left: -45px; color: #F9F9F7; background-color: #1E1E1E; }
	#btnBack:hover span { transform: scale(1.4); }
	#username,#password{ padding-right:35px;}
</style>

</head>
<body>
<?php
	require_once("php/class.database.php");
	if (isset($_SESSION['Staff'])){
		header("Location:index.php");
	}
?>


    <div class="container"> 
		<img src="images/home.png" class="img-responsive center-block">
        <div id="loginbox" style="margin-top:50px; z-index: 3; " class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-default" >
                <div class="panel-heading">
                    <div class="panel-title">Login</div>
                        <div style="float:right; font-size: .8em; position: relative; top:-15px">EMPLOYEE</div>
                </div>     
                <div style="padding-top:30px" class="panel-body" >
                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>            
                        <form id="loginform" class="form-horizontal" role="form">                              
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="username" autocomplete="off" onkeyup="checkLen(this.id); checkEnable();" onkeypress="handleKeyPress(event);" type="text" class="form-control" value="" placeholder="Username">                                        
                                    </div>                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="password" autocomplete="off" onkeyup="checkLen(this.id); checkEnable();" onkeypress="handleKeyPress(event);" type="password" class="form-control"  placeholder="Password">
                                    </div>                    
                                <div style="margin-top:10px" class="form-group">
                                    <div class="col-sm-12 controls">
                                      <a id="btn-login" disabled="disabled" onclick='signIn();' class="btn btn-default center-block">Login  </a> 
                                    </div>
                                </div>  
								<img id="warning-user" style="cursor:help; visibility:hidden; position:absolute; top:77px; right:35px; z-index:5; float:right;" src="images/icon-warning.png" width="25" height="25" />
								<img id="warning-pass" style="cursor:help; visibility:hidden; position:absolute; top:137px; right:35px; z-index:5; float:right;" src="images/icon-warning.png" width="25" height="25" />
						
                        </form>     
                </div>                     
            </div>  
        </div>
		<img src="images/mushroom-bottomright.png" class="img-responsive pull-right" id="mushroombg">
			
    </div>
	
	<div class="modal fade" data-backdrop="static" data-keyboard="false" style="padding-top:100px;"id="alertModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content" id="alertModalAnimate" style="border-radius:3pt;">
        <div class="modal-header" style="background-color:#e66454;color:#fff;" align="center">
          <button type="button" class="close" data-dismiss="modal">&times;</button><!--data-dismiss="modal"-->
		  
          <h3 id='orders-label'  class="modal-title"><i class="fa fa-info-circle"></i> Reset</h3>
        </div>
		
        <div class="modal-body" style="text-align:center;">
			This action requires your confirmation. Please choose an option:
        </div>
        <div class="modal-footer" style=" text-align:center;">		
			<a onclick="resetPass(); return false;" class="btn btn-danger" href="#">
				<i class="fa fa-check fa-lg"></i> Confirm
			</a>			
        </div>
      </div>
    </div>
  </div>


<!-- jQuery UI 1.11.4 -->
<!--<script src="js/jquery-1.4.2.js"></script>-->
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<script src="js/jquery.hotkeys.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="dist/js/adminJS.js"></script>


<script>

</script>
</body>
</html>