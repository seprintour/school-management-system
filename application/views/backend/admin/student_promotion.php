<?php 
    $active_sms_service = $this->db->get_where('settings' , array('type' => 'active_sms_service'))->row()->description;
?>
<hr />
<div class="x_panel" >
            
                <div class="x_title">
                    <div class="panel-title">
					 <?php echo get_phrase('student_promotion_page'); ?>
					</div>
					</div>
<form method="post" action="<?php echo base_url();?>index.php?admin/student_promotion" class="form">
<div class="row">
    <div class="col-sm-3 form-group" style="margin-top: 15px;">
        <label class="control-label" style="margin-bottom: 5px;">Current Session</label>
        <select name="running_year" class="form-control selectboxit">
            <option>
                <?php
                    $year = date('Y');
                    $next_year = $year + 1;
                    $running_year = $year."-".$next_year;
                    echo $running_year;
                ?>
            </option>
        </select>
    </div>

    <div class="col-sm-3 form-group" style="margin-top: 15px;">
        <label class="control-label" style="margin-bottom: 5px;">Promote To Session</label>
        <select name="next_running_year" class="form-control selectboxit">
            <option>
                <?php
                    $year_after_year = $next_year + 1;
                    $next_running_year = $next_year."-".$year_after_year;
                    echo $next_running_year;
                ?>
            </option>
        </select>
    </div>

    <div class="col-sm-3 form-group" style="margin-top: 15px;">
        <label class="control-label" style="margin-bottom: 5px;">Promotion From Class</label>
        <select name="from_class" class="form-control selectboxit">
            <option value="">select</option>
            <?php 
            $classes    =   $this->db->get('class')->result_array();
            foreach($classes as $row):?>
            <option value="<?php echo $row['class_id'];?>"
                    <?php if(isset($from_class) && $from_class==$row['class_id'])echo 'selected="selected"';?> style="display:none;">
                    <?php echo $row['name'];?>
            </option>
            <?php endforeach;?>
        </select>
    </div>

    <div class="col-sm-3 form-group" style="margin-top: 15px;">
        <label class="control-label" style="margin-bottom: 5px;">Promotion To Class</label>
        <select name="to_class" class="form-control selectboxit">
            <option value="">select</option>
            <?php 
            $classes    =   $this->db->get('class')->result_array();
            foreach($classes as $row):?>
            <option value="<?php echo $row['class_id'];?>"
                    <?php if(isset($to_class) && $to_class==$row['class_id'])echo 'selected="selected"';?> style="display:none;">
                    <?php echo $row['name'];?>
            </option>
            <?php endforeach;?>
        </select>
    </div>

    <center>
        <button type="submit" style="margin:10px;" class="btn btn-green btn-sm btn-icon icon-left"><i class="entypo-book"></i>Manage Promotion</button>
    </center>

</div>

<div id="students_for_promotion_holder"></div>

</form>
</div>

<br/>

<?php if($from_class!='' && $to_class!=''):?>

<hr/>
<div class="row" style="text-align: center;">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
        <div class="tile-stats tile-gray">
            <div class="icon"><i class="entypo-users"></i></div>
            
            <h3 style="color: #696969;">Students Of Class <?php
            $classes    =   $this->db->get('class')->result_array();
            foreach ($classes as $row) {
                if(isset($from_class) && $from_class==$row['class_id']) $calss_name = $row['name'];
            } 
            echo $calss_name;?></h3>
        </div>
    </div>
    <div class="col-sm-4"></div>
</div>

<form method="post" action="<?php echo base_url();?>index.php?admin/manage_enrollment" class="form">
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <thead align="center">
                    <tr>
                        <td align="center">Name</td>
                        <td align="center">Section</td>
                        <td align="center">Roll</td>
                        <td align="center">Info</td>
                        <td align="center">Options</td>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $students   =   $this->crud_model->get_students($from_class);
                    foreach($students as $row): ?>
                    <tr>
                        <td align="center" name="enroll_<?php echo $row['student_id'];?>" value="<?php echo $row['student_id'];?>">
                            <?php echo $row['name'];?>          
                        </td>
                        <td align="center">
                           <?php
                            $sections    =   $this->db->get('section')->result_array();
                            foreach ($sections as $row2) {
                                if($row['section_id']==$row2['section_id']) echo $row2['name'];
                            }
                            ?>
                        </td>
                        <td align="center"><?php echo $row['roll'];?></td>
                        <td align="center">
                        <button type="button" class="btn btn-info btn-sm btn-icon icon-left" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/student_promotion_performance/<?php echo $from_class;?>/<?php echo $row['student_id'];?>');">
                            <i class="entypo-eye"></i>View Academic Performance</button>
                        </td>
                        <td>
                            <?php 
                            $classes    =   $this->db->get('class')->result_array();
                            foreach ($classes as $row2) {
                                if(isset($from_class) && $from_class==$row2['class_id']) $calss_from = $row2['name'];
                                if(isset($to_class) && $to_class==$row2['class_id']) $calss_to = $row2['name'];
                            }
                            $verify_data    =   array(  'student_id' => $row['student_id'],
                                                        'from_class_id' => $from_class,
                                                        'to_class_id' => $to_class);
                            $query = $this->db->get_where('enroll' , $verify_data);
                            if($query->num_rows() < 1){
                                ?>
                                <select name="to_class_<?php echo $row['student_id'];?>" class="form-control selectboxit">
                                    <option value="<?php echo $to_class;?>">Enroll To Class - <?php echo $calss_to;?></option>
                                    <option value="<?php echo $from_class;?>">Enroll To Class - <?php echo $calss_from;?></option>
                                </select>
                                <?php
                            }
                            else{
                                ?>
                                    <button type="button" class="btn btn-green btn-sm btn-icon icon-left">
                                        <i class="entypo-check"></i> Student Already Enrolled
                                    </button>
                                <?php
                            }
                           ?> 
                        </td>
                    </tr>
                    <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <center>
            <input type="text" name="from_class" value="<?php echo $from_class;?>" style="display: none;">
            <button type="submit"class="btn btn-green btn-sm btn-icon icon-left">
                <i class="entypo-check"></i>Promote Slelected Students
            </button>
        </center>
    </div>
</form>
<?php endif;?>