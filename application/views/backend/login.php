<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        $system_name = $this->db->get_where('settings', array('type' => 'system_name'))->row()->description;
        $system_title = $this->db->get_where('settings', array('type' => 'system_title'))->row()->description;
        ?>
        <title><?php echo get_phrase('login'); ?> | <?php echo $system_title; ?></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Optimum Linkup Universal Concepts" />
        <meta name="author" content="optimumlinkup.com.ng" />

        <link rel="stylesheet" href="assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
        <link rel="stylesheet" href="assets/css/font-icons/entypo/css/entypo.css">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link href="assets/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/neon-core.css">
        <link rel="stylesheet" href="assets/css/neon-theme.css">
        <link rel="stylesheet" href="assets/css/neon-forms.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/unicorn-login.css">
        <link rel="stylesheet" href="assets/css/unicorn-login-custom.css">

        <script src="assets/js/jquery-1.11.0.min.js"></script>

        <!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
                <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="assets/images/favicon.png">
		
<script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
    </head>
    <body class="page-body login-page login-form-fall" data-url="http://neon.dev">
<div id="myModal" class="modal modal-danger">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" align="center">Welcome Guest !&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="close" data-dismiss="modal">X</button></h3> 
            </div>
            <div class="modal-body">
				<p><h3 style="color: #FF0000" align="center">SCHOOL SOFTWARE NORMAL PRICE: <strike>99$</strike>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>PROMOTION PRICE: 31$&nbsp;</h3></p>
               
                   <div align="justify"> 
				   
				   <div data-type="countdown" data-id="279860" class="tickcounter" style="width: 100%; height: 150px; margin: 0 auto"><a href="//www.tickcounter.com/countdown/279860/promotion-ends-on" title="PROMOTION ENDS ON">PROMOTION ENDS ON</div><script>(function(d, s, id) { var js, pjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = "//www.tickcounter.com/static/js/loader.js"; pjs.parentNode.insertBefore(js, pjs); }(document, "script", "tickcounter-sdk"));</script>
					</div>
				   </div>
            </div>
        </div>
    </div>
</div>
        <!-- This is needed when you send requests via Ajax -->
        <script type="text/javascript">
            var baseurl = '<?php echo base_url(); ?>';
        </script>

        <div id="container">

            <div id="loginbox">   
                <div id="logo">
                    <a href="<?php echo base_url(); ?>" class="logo">
                        <img src="uploads/logo.png" height="60" alt="" />
                    </a>
                </div>
                
                <div class="login-progressbar-indicator">
                    <h3>33%</h3>
                    <span>checking login information...</span>
                </div>
                <div class="login-progressbar progress">
                    <div class="progress-bar progress-bar-danger"></div>
                </div>
                <form method="post" role="form" id="form_login">
                    <div style="font-weight:normal; font-size: 12px; text-align: left;padding:20px;">
                        Welcome to the <?php echo $system_name; ?>. To continue, please login using your username and password below.
                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" name="email" id="email" value="admin@admin.com" autocomplete="off" data-mask="email" />
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control" name="password" id="password" value="admin" autocomplete="off" />
                    </div>

                    <div class="form-actions">
                        <div class="text-right">
                            <a href="<?php echo base_url(); ?>index.php?login/forgot_password" class="flip-link to-recover"><?php echo get_phrase('forgot_your_password'); ?> ?</a>                        
                        </div>
                        <div>
                            <input type="submit" class="btn btn-success form-control " value="Login" />
                        </div>
                    </div>                    

                    <div class="login-bottom-link">
                        <a href="../school/Documentation" target="_blank"><i class="entypo-book"></i>View Documentation</a>
                        <a href="http://optimumlinkupsoftware.com/pricing.php"><i class="entypo-paypal"></i>Buy Now</a>
						<hr><br>
			<a href="#a"> <button type="button" data-target= "#a" class="btn btn-green btn-sm btn-icon icon-left"  data-toggle="modal" data-toggle="tooltip"><i class="entypo-lock"></i>OTHER SEVEN LOGIN DETAILS</button></a>


                    </div>
                </form>             
            </div>

            <div class="form-login-error">
                <h3>Invalid Login</h3>
                <p>Please enter correct email and password!</p>
            </div>
        </div>


        <div class="modal fade" id="a" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" style=" color:#FF0000">&times;</button>
                        <h4 class="modal-title" style="color:#006600"align="center">How To Purchase </h4>
                    </div>
                    <div class="modal-body">
                       <table width="398" border="0">
    <tr>
      <td width="69"><strong>Role</strong></td>
      <td width="141"><strong>Email</strong></td>
      <td width="174"><strong>Password</strong></td>
    </tr>
    <tr>
      <td>Admin</td>
      <td>admin@admin.com</td>
      <td>admin</td>
    </tr>
    <tr>
      <td>Teacher</td>
      <td>teacher@teacher.com</td>
      <td>teacher</td>
    </tr>
    <tr>
      <td>Student</td>
      <td>student@student.com</td>
      <td>student</td>
    </tr>
    <tr>
      <td>Accountant</td>
      <td>account@account.com</td>
      <td>account</td>
    </tr>
    <tr>
      <td>Librarian</td>
      <td>librarian@librarian.com</td>
      <td>librarian</td>
    </tr>
    <tr>
      <td>Hostel Manager </td>
      <td>hostel@hostel.com</td>
      <td>hostel</td>
    </tr>
    <tr>
      <td>Parent</td>
      <td>parent@parent.com</td>
      <td>parent</td>
    </tr>
  </table>
                        <hr>
                        <button type="button" class="btn btn-danger btn-flat" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>


        <!-- Bottom Scripts -->
        <script src="assets/js/gsap/main-gsap.js"></script>
        <script src="assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/joinable.js"></script>
        <script src="assets/js/resizeable.js"></script>
        <script src="assets/js/neon-api.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/neon-login.js"></script>
        <script src="assets/js/neon-custom.js"></script>
        <script src="assets/js/neon-demo.js"></script>

        <!--Start of Tawk.to Script-->
        <script type="text/javascript">
            var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
            (function () {
                var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = 'https://embed.tawk.to/588e0fa6af9fa11e7aa44047/default';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
        <!--End of Tawk.to Script-->


    </body>
</html>