
<div class="top_nav">

    <!-- top navigation -->
    <div class="nav_menu">
        <nav> 
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>
            <div class="system_name text-center col-md-6">
                <a href="<?php echo base_url() ?>index.php">
                    <img src="<?php echo base_url() ?>uploads/logo.png" class="system-logo"/>
                    <?php echo $system_name; ?>
                </a>
            </div>
			
			
            <!--<div class="col-md-6 text-right">-->
            <ul class="nav navbar-nav navbar-right">                
                <li class="">
                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <div class="img-circle profile_img" style="background-image:url('<?php echo $face_file; ?>'); " alt="..." ></div>
                        <span>
                            <?php
                            if ($this->session->userdata('name') == '')
                                echo $this->session->userdata('login_type');
                            else
                                echo $this->session->userdata('name');
                            ?>
                        </span>
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <?php if ($account_type != 'parent'): ?>
                        <ul class="dropdown-menu dropdown-usermenu <?php
                        if ($text_align == 'right-to-left')
                            echo 'pull-right';
                        else
                            echo 'pull-left';
                        ?>">
                            <li>
                                <a href="<?php echo base_url(); ?>index.php?<?php echo $account_type; ?>/manage_profile">
                                    <?php echo get_phrase('edit_profile'); ?>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php?<?php echo $account_type; ?>/manage_profile">
                                    <?php echo get_phrase('change_password'); ?>
                                </a>
                            </li>
                            <li><a href="<?php echo base_url(); ?>index.php?login/logout"><i class="fa fa-sign-out  pull-right"></i> Log Out</a></li>
                        </ul>
                    <?php endif; ?>                  
                    <?php if ($account_type == 'parent'): ?>
                        <ul class="dropdown-menu dropdown-usermenu <?php
                        if ($text_align == 'right-to-left')
                            echo 'pull-right';
                        else
                            echo 'pull-left';
                        ?>">
                            <li>
                                <a href="<?php echo base_url(); ?>index.php?parents/manage_profile">
                                    <i class="entypo-info"></i>
                                    <span><?php echo get_phrase('edit_profile'); ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php?parents/manage_profile">
                                    <i class="entypo-key"></i>
                                    <span><?php echo get_phrase('change_password'); ?></span>
                                </a>
                            </li>
                            <li><a href="<?php echo base_url(); ?>index.php?login/logout" style="padding-left:43px;"><i class="fa fa-sign-out  pull-right"></i> Log Out</a></li>
                        </ul>
                    <?php endif; ?>
                </li> 

                <!--          message notification           -->
                <li role="presentation" class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge bg-green"><?php echo $this->crud_model->count_unread_message_of_curuser() ?></span>
                    </a>
                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                        <?php
                        $messages = $this->crud_model->unread_message_of_curuser();
                        foreach ($messages as $message) :
                            ?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php?<?php echo ($this->session->userdata('login_type') == 'parent' ? 'parents' : $this->session->userdata('login_type')) ?>/message/message_read/<?php echo $message["message_thread_code"] ?>">
                                    <span class="image"><img src="<?php echo $message["face_file"] ?>" alt="Profile Image" /></span>
                                    <span>
                                        <span><?php echo $message["sender_name"] ?></span>
                                        <span class="time"><?php echo $message["ago"] ?> ago</span>
                                    </span>
                                    <span class="message message-overflow">
                                        <?php echo $message["message"] ?>
                                    </span>
                                </a>
                            </li>
                        <?php endforeach; ?>                        
                        <li>
                            <div class="text-center">
                                <a href="<?php echo base_url(); ?>index.php?<?php echo ($this->session->userdata('login_type') == 'parent' ? 'parents' : $this->session->userdata('login_type')) ?>/message">
                                    <strong>See All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!--/message notification -->


                <li class="dropdown language-selector">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
                        <span class="label label-success"><i class="entypo-globe"></i>&nbsp;Change Language&nbsp;<i class="entypo-down"></i></span>
                    </a>

                    <ul class="dropdown-menu <?php
                    if ($text_align == 'left-to-right')
                        echo 'pull-left';
                    else
                        echo 'pull-right';
                    ?>">
                            <?php
                            $fields = $this->db->list_fields('language');
                            foreach ($fields as $field) {
                                if ($field == 'phrase_id' || $field == 'phrase')
                                    continue;
                                ?>
                            <li class="<?php if ($this->session->userdata('current_language') == $field) echo 'active'; ?>">
                                <a href="<?php echo base_url(); ?>index.php?multilanguage/select_language/<?php echo $field; ?>">
                                    <img src="assets/images/flag/<?php echo $field; ?>.png" style="width:16px; height:16px;" />	
                                    <span><?php echo $field; ?></span>
                                </a>
                            </li>
                            <?php
                        }
                        ?>

                    </ul>
                </li>       
            </ul>
            <!--</div>-->
        </nav>
    </div>
</div>
			<h3><p align="center" style="color:#FF0000"><strong>Demo Version. Some Modules Disabled ! Purchase to Enable All Modules. <a href="https://optimumlinkupsoftware.com" target="_blank">Click here to purchase (31$)</a></strong></p></h3>
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <?php if ($this->router->fetch_method() != 'dashboard'): ?>
                <div class="title_left">
                    <h3>
                        <?php echo $page_title; ?><small></small>
                    </h3>
                </div>
            <?php endif ?>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12">
                <!-- /top navigation -->
