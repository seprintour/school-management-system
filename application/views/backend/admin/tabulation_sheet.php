<hr />
<div class="row">
	<div class="col-md-12">
		<?php echo form_open(base_url() . 'index.php?admin/tabulation_sheet');?>
			<div class="col-md-3">
				<div class="form-group">
					<select name="class_id" class="form-control selectboxit"  onchange="show_students(this.value)">
                        <option value=""><?php echo get_phrase('select_a_class');?></option>
                        <?php 
                        $classes = $this->db->get('class')->result_array();
                        foreach($classes as $row):
                        ?>
                            <option value="<?php echo $row['class_id'];?>"
                            	<?php if ($class_id == $row['class_id']) echo 'selected';?>>
                            		Class <?php echo $row['name'];?>
                            </option>
                        <?php
                        endforeach;
                        ?>
                    </select>
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<?php 
                        $classes	=	$this->crud_model->get_classes(); 
                        foreach($classes as $row): ?>
                        
                        <select name="<?php if($class_id == $row['class_id'])echo 'student_id';else echo 'temp';?>" 
                              id="student_id_<?php echo $row['class_id'];?>" 
                                  style="display:<?php if($class_id == $row['class_id'])echo 'block';else echo 'none';?>;" class="form-control"  style="float:left;">
                          
                            <option value="">Students of class <?php echo $row['name'];?></option>
                            
                            <?php 
                            $students	=	$this->crud_model->get_students($row['class_id']); 
                            foreach($students as $row2): ?>
                            <option class="student_id" value="<?php echo $row2['student_id'];?>"
                                <?php if(isset($student_id) && $student_id == $row2['student_id'])
                                        echo 'selected="selected"';?>><?php echo $row2['name'];?>
                            </option>
                            <?php endforeach;?>
                            
                            
                        </select> 
                    <?php endforeach;?>
                    
                    
                    <select name="temp" id="student_id_0" 
                      style="display:<?php if(isset($student_id) && $student_id >0)echo 'none';else echo 'block';?>;" class="form-control" style="float:left;">
                            <option value="">Select a student</option>
                    </select>
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<select name="exam_id" class="form-control selectboxit">
                        <option value=""><?php echo get_phrase('select_an_exam');?></option>
                        <?php 
                        $exams = $this->db->get('exam')->result_array();
                        foreach($exams as $row):
                        ?>
                            <option value="<?php echo $row['exam_id'];?>"
                            	<?php if ($exam_id == $row['exam_id']) echo 'selected';?>>
                            		<?php echo $row['name'];?>
                            </option>
                        <?php
                        endforeach;
                        ?>
                    </select>
				</div>
			</div>
			<input type="hidden" name="operation" value="selection">
			<div class="col-md-3">
				<button type="submit" class="btn btn-green btn-sm btn-icon icon-left"><i class="entypo-book"></i><?php echo get_phrase('view_tabulation_sheet');?></button>
			</div>
		<?php echo form_close();?>
	</div>
</div>

<?php if ($class_id != '' && $exam_id != '' && $student_id != ''):?>
<br>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4" style="text-align: center;">
		<div class="tile-stats tile-white tile-white-primary">
			<h3>
				<?php
					$exam_name  = $this->db->get_where('exam' , array('exam_id' => $exam_id))->row()->name; 
					$class_name = $this->db->get_where('class' , array('class_id' => $class_id))->row()->name; 
					echo get_phrase('tabulation_sheet');
				?>
			</h3>
			<h4><?php echo get_phrase('class') . ' ' . $class_name;?></h4>
			<h4><?php echo $exam_name;?></h4>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>


<hr />

<div class="row">
	<div class="col-md-12">
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
						POSITION<br/>IN<br/>SUBJECT
					</td>
					<td style="text-align: center;vertical-align: middle;">
						ATTENDANCE
					</td>
					<td style="text-align: center;vertical-align: middle;">
						REMARKS<br/>SIGNATURES
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
					$obtained_mark_query = 	$this->db->get_where('mark' , array(
													'class_id' => $class_id , 
														'exam_id' => $exam_id , 
															'subject_id' => $row['subject_id'] , 
																'student_id' => $student_id
												));
					if ( $obtained_mark_query->num_rows() > 0) {
						$obtained_marks = $obtained_mark_query->row()->mark_obtained;
						$obtained_class_score = $obtained_mark_query->row()->class_score;
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
					<td style="text-align: center;"></td>
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
                    <td style="text-align: center;"></td>    
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
		<center>
			<a href="<?php echo base_url();?>index.php?admin/tabulation_sheet_print_view_control/<?php echo $class_id;?>/<?php echo $exam_id;?>" 
				class="btn btn-green btn-sm btn-icon icon-left" target="_blank">
				<i class="entypo-print"></i><?php echo get_phrase('generate_mass_report_card_for_class');?>
			</a>
		</center>
	</div>
</div>
<?php endif;?>
<script type="text/javascript">
  function show_students(class_id)
  {
      for(i=0;i<=100;i++)
      {

          try
          {
              document.getElementById('student_id_'+i).style.display = 'none' ;
	  		  document.getElementById('student_id_'+i).setAttribute("name" , "temp");
          }
          catch(err){}
      }
      if (class_id == "") {
        class_id = "0";
      }
      document.getElementById('student_id_'+class_id).style.display = 'block' ;
	  document.getElementById('student_id_'+class_id).setAttribute("name" , "student_id");
	  var student_id = $(".student_id");
    for(var i = 0; i < student_id.length; i++)
        student_id[i].selected = "";
  }

</script>