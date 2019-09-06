<?php 
    $active_sms_service = $this->db->get_where('settings' , array('type' => 'active_sms_service'))->row()->description;
?>
<hr />
<div class="row">

    <table cellpadding="0" cellspacing="0" border="0" class="table table-bordered">
        <thead>
            <tr>
                <th>Class</th>
                <th>Section</th>
                <th>Month</th>
                <th>Sessional Year</th>
                <th></th>
           </tr>
       </thead>
        <tbody>
            <form method="post" action="<?php echo base_url();?>index.php?admin/attendance_report_view" class="form">
                <tr class="gradeA">
                    <td>
                        <select name="class_id" id="class_id" class="form-control" onchange="select_section(this.value)">
                            <option value="">Select a class</option>
                            <?php 
                            $classes    =   $this->db->get('class')->result_array();
                            foreach($classes as $row):?>
                            <option value="<?php echo $row['class_id'];?>"
                                <?php if(isset($class_id) && $class_id==$row['class_id'])echo 'selected="selected"';?>>
                                    <?php echo $row['name'];?>
                                        </option>
                            <?php endforeach;?>
                        </select>

                    </td>
                    <td>
                        <select name="section_id" id="section" class="form-control">
                            <option value="" class="section">Select Class First</option>
                            <?php 
                            $sections    =   $this->db->get('section')->result_array();
                            foreach($sections as $row):?>
                            <option class="section" value="<?php echo $row['section_id'];?>"
                                <?php if(isset($section_id) && $section_id==$row['section_id'])echo 'selected="selected"';?> style="display:none;">
                                    <?php echo $row['name'];?>
                                        </option>
                            <?php endforeach;?>
                        </select>
                    </td>
                    <td>
                        <select name="month" class="form-control">
                            <option value="1" <?php if(isset($month) && $month=="1")echo 'selected="selected"';?>>January</option>
                            <option value="2" <?php if(isset($month) && $month=="2")echo 'selected="selected"';?>>February</option>
                            <option value="3" <?php if(isset($month) && $month=="3")echo 'selected="selected"';?>>March</option>
                            <option value="4" <?php if(isset($month) && $month=="4")echo 'selected="selected"';?>>April</option>
                            <option value="5" <?php if(isset($month) && $month=="5")echo 'selected="selected"';?>>May</option>
                            <option value="6" <?php if(isset($month) && $month=="6")echo 'selected="selected"';?>>June</option>
                            <option value="7" <?php if(isset($month) && $month=="7")echo 'selected="selected"';?>>July</option>
                            <option value="8" <?php if(isset($month) && $month=="8")echo 'selected="selected"';?>>August</option>
                            <option value="9" <?php if(isset($month) && $month=="9")echo 'selected="selected"';?>>September</option>
                            <option value="10" <?php if(isset($month) && $month=="10")echo 'selected="selected"';?>>October</option>
                            <option value="11" <?php if(isset($month) && $month=="11")echo 'selected="selected"';?>>November</option>
                            <option value="12" <?php if(isset($month) && $month=="12")echo 'selected="selected"';?>>December</option>
                        </select>
                    </td>
                    <td>
                        <select name="year" class="form-control">
                            <option value="2017" <?php if(isset($year) && $year=="2017")echo 'selected="selected"';?>>2017</option>
                            <option value="2018" <?php if(isset($year) && $year=="2018")echo 'selected="selected"';?>>2018</option>
                        </select>
                    </td>
                    <td align="center">
         <button type="submit" class="btn btn-blue btn-sm btn-icon icon-left"><i class="entypo-book"></i>&nbsp;<?php echo get_phrase('show_report'); ?></button>

                    
                    </td>
                </tr>
            </form>
        </tbody>
    </table>
</div>

<br/>

<?php if($section_id!='' && $month!='' && $year!='' && $class_id!=''):?>

<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4" style="text-align: center;">
        <div class="tile-stats tile-gray">
            <div class="icon"><i class="entypo-docs"></i></div>
            <h3 style="color: #696969;">Attendance Sheet</h3>
            <?php 
                $classes    =   $this->db->get('class')->result_array();
                foreach ($classes as $row) {
                    if(isset($class_id) && $class_id==$row['class_id']) $calss_name = $row['name'];
                }
                $sections    =   $this->db->get('section')->result_array();
                foreach ($sections as $row) {
                    if(isset($section_id) && $section_id==$row['section_id']) $section_name = $row['name'];
                }
            ?>
            <?php
                $full_date = "5"."-".$month."-".$year;
                $full_date = date_create($full_date);
                $full_date = date_format($full_date,"F, Y");
            ;?>
            <h4 style="color: #696969;">Class <?php echo $calss_name; ?> : Section <?php echo $section_name; ?><br><?php echo $full_date; ?></h4>
        </div>
    </div>
    <div class="col-md-4"></div>
</div>

<hr/>

<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered" id="my_table">
            <thead>
                <tr>
                    <td style="text-align: center;">Students <i class="entypo-down-thin"></i> | Date <i class="entypo-right-thin"></i></td>
                    <?php
                    $days = date("t",mktime(0,0,0,$month,1,$year)); 
                        for ($i=0; $i < $days; $i++) { 
                           ?>
                            <td style="text-align: center;"><?php echo ($i+1);?></td>   
                           <?php 
                        }
                    ;?>
                </tr>
            </thead>
            <tbody>
            <?php 
                //STUDENTS ATTENDANCE
                $students   =   $this->db->get_where('student' , array('class_id'=>$class_id))->result_array();
                foreach($students as $row)
                {
                    ?>
                <tr class="gradeA">
                    <td align="center"><?php echo $row['name'];?></td>
                    <?php 
                        for ($i=1; $i <= $days; $i++) {
                            $full_date = $year."-".$month."/".$i;
                            $verify_data    =   array(  'student_id' => $row['student_id'],
                                                    'date' => $full_date);
                            $attendance = $this->db->get_where('attendance' , $verify_data)->row();
                            $status     = $attendance->status;
                            ?>
                            <td style="text-align: center;">
                                <?php if ($status == "1"):?>
                                    <i class="entypo-record" style="color: #00a651;"></i>
                                <?php endif;?>
                                <?php if ($status == "2"):?>
                                    <i class="entypo-record" style="color: #EE4749;"></i>
                                <?php endif;?>
                            </td>    
                           <?php 
                        }
                    ;?>
                </tr>
                <?php
                }
                ;?>
            </tbody>
        </table>
        <center>
            <a href="<?php echo base_url(); ?>index.php?admin/attendance_report_print_view/<?php echo $class_id; ?>/<?php echo $section_id; ?>/<?php echo $month; ?>/<?php echo $year; ?>" class="btn btn-green btn-sm btn-icon icon-left" target="_blank"><i class="entypo-print"></i>Print Attendance Sheet</a>
        </center>
    </div>
</div>

<?php endif;?>

<script type="text/javascript">

    $("#update_attendance").hide();

    function update_attendance() {

        $("#attendance_list").hide();
        $("#update_attendance_button").hide();
        $("#update_attendance").show();

    }

    function select_section(class_id) {

        var sections = $(".section");
        for (var i = sections.length - 1; i >= 0; i--) {
            sections[i].style.display = "none";
            if (sections[i].value == class_id){
                sections[i].style.display = "block";
                sections[i].selected = "selected";
            }
        }
    }

    function mark_all_present() {
        var status = $(".status");
        for(var i = 0; i < status.length; i++)
            status[i].value = "1";
    }

    function mark_all_absent() {
        var status = $(".status");
        for(var i = 0; i < status.length; i++)
            status[i].value = "2";
    }

</script>
<style>
    div.datepicker{
        border: 1px solid #c4c4c4 !important;
    }
</style>