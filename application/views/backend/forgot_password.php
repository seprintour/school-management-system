<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        $system_name = $this->db->get_where('settings', array('type' => 'system_name'))->row()->description;
        $system_title = $this->db->get_where('settings', array('type' => 'system_title'))->row()->description;
        ?>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Neon Admin Panel" />
        <meta name="author" content="" />

        <title><?php echo get_phrase('reset_password'); ?> | <?php echo $system_title; ?></title>


        <link rel="stylesheet" href="assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
        <link rel="stylesheet" href="assets/css/font-icons/entypo/css/entypo.css">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
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

    </head>
    <body class="page-body login-page login-form-fall" data-url="http://neon.dev">


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


                <form method="post" role="form" id="form_forgot_password">
                    <div style="font-weight:normal; font-size: 12px; text-align: left;padding:20px;">
                        Reset password
                    </div>
                    <div class="form-forgotpassword-success">
                        <i class="entypo-check"></i>
                        <h3>Reset email has been sent.</h3>
                        <p>Please check your email inbox, password reset instruction is sent!</p>
                    </div>

                    <div class="form-steps">
                        <div class="step current" id="step-1">
                            <div class="form-group">
                                <input type="text" class="form-control" name="email" id="email" placeholder="Email"  autocomplete="off" />
                            </div>

                            <div class="form-actions">
                                <div>
                                    <input type="submit" class="btn btn-success form-control " value="<?php echo get_phrase('reset_password'); ?>" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="login-bottom-link">

                        <a href="<?php echo base_url(); ?>index.php?login" class="link">
                            <i class="entypo-lock"></i>
                            <?php echo get_phrase('return_to_login_page'); ?>
                        </a>
                    </div>
                </form>
            </div>
            <div class="form-login-error">
                <h3>Invalid Email</h3>
                <p>Please enter correct email!</p>
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
        <script src="assets/js/neon-forgotpassword.js"></script>
        <script src="assets/js/jquery.inputmask.bundle.min.js"></script>
        <script src="assets/js/neon-custom.js"></script>
        <script src="assets/js/neon-demo.js"></script>

    </body>
</html>