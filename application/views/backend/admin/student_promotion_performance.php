<?php 
sleep(1);
$class_id = $param2;
$student_id = $param3;
$student = $this->crud_model->get_student_info($student_id);
foreach ($student as $row)
            $student_name = $row['name'];
?>
<center>
    <button class="btn btn-primary">
        <i class="entypo-user"></i> Mr <?php echo $student_name;?></button>
</center>
<br/>
<br/>
<?php
$exams = $this->db->get('exam')->result_array();
foreach($exams as $row_exam):
    $exam_id = $row_exam['exam_id'];
    $total_marks = 0;
    $total_class_score = 0;
    $total_grade_point = 0;
    ?>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary panel-shadow" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title"><?php echo $row_exam['name'];?></div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td style="text-align: center;vertical-align: middle;">
                                <?php echo get_phrase('SUBJECTS');?>
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                CLASS<br/>SCORE<br/>30%
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                EXAMS<br/>SCORE<br/>70%
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                TOTAL<br/>SCORE<br/>100%
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                GRADE<br/>OBTAINED
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                ATTEN<br/>DANCE
                            </td>
                            <td style="text-align: center;vertical-align: middle;">
                                COMMENT
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        
                        $subjects = $this->db->get_where('subject' , array('class_id' => $class_id))->result_array();
                        foreach($subjects as $row):
                    ?>
                        <tr>
                            <td style="text-align: center;"><?php echo $row['name'];?></td>
                        <?php
                            $obtained_mark_query =  $this->db->get_where('mark' , array(
                                                            'class_id' => $class_id , 
                                                                'exam_id' => $exam_id , 
                                                                    'subject_id' => $row['subject_id'] , 
                                                                        'student_id' => $student_id
                                                        ));
                            if ( $obtained_mark_query->num_rows() > 0) {
                                $obtained_marks = $obtained_mark_query->row()->mark_obtained;
                                $obtained_class_score = $obtained_mark_query->row()->class_score;
                                $comment = $obtained_mark_query->row()->comment;
                                $total_marks += $obtained_marks;
                                $total_class_score += $obtained_class_score;
                                if ($obtained_marks >= 0 && $obtained_marks != '') {
                                    $grade = $this->crud_model->get_grade($obtained_marks);
                                    $grade_point = $grade['grade_point'];
                                    $total_grade_point += $grade_point;
                                }
                            }
                        ?>
                            <td style="text-align: center;"><?php echo $obtained_class_score ;?></td>
                            <td style="text-align: center;"><?php echo $obtained_marks;?></td>
                            <td style="text-align: center;"><?php echo ($obtained_marks + $obtained_class_score);?></td>
                            <td style="text-align: center;"><?php echo $grade_point;?></td>
                        <?php
                            $exam = $this->db->get_where('exam' , array('exam_id' => $exam_id))->row();
                            $full_date = $exam->date;
                            $date = explode("/", $full_date);
                            $full_date = $date[2]."-".$date[0]."-".$date[1];
                            $verify_data    =   array(  'student_id' => $student_id,
                                                        'date' => $full_date);
                            $attendance = $this->db->get_where('attendance' , $verify_data)->row();
                            $status     = $attendance->status;
                            ?>
                            <td style="text-align: center;">
                                <?php if ($status == "1"):?>
                                    <i>P</i>
                                <?php endif;?>
                                <?php if ($status == "2"):?>
                                    <i>A</i>
                                <?php endif;?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo $comment;?>
                            </td>    
                        <?php endforeach;?>
                        <tr>
                            <td style="text-align: center;">
                                <?php echo get_phrase('TOTALS');?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo $total_class_score;?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo $total_marks;?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo ($total_marks + $total_class_score);?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo $total_grade_point;?>
                            </td>
                            <td style="text-align: center;">
                                <?php if ($status == "0"):?>
                                    <i>U</i>
                                <?php endif;?>
                                <?php if ($status == "1"):?>
                                    <i>P</i>
                                <?php endif;?>
                                <?php if ($status == "2"):?>
                                    <i>A</i>
                                <?php endif;?>
                            </td>
                            <td style="text-align: center;">
                                
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<br/>
<?php endforeach;?>
<style type="text/css">
    .panel-primary > .panel-heading {
        color: #fff;
        background-color: #949494;
        border-color: #949494;
    }
    .panel-primary {
        border-color: #949494;
    }
    .panel-heading > .panel-title{
        color: white;
    }
</style>