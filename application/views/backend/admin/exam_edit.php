<?php
$sql = "select max(b.label) as max_label from question a "
        . "inner join answer b on a.question_id=b.question_id "
        . "where a.question_id=" . $param2;
$result = $this->db->query($sql)->result_array();
$max_label = $result[0]['max_label'];

$sql = "select * from question "
        . "where question_id=" . $param2;
$exam_list = $this->db->query($sql)->result_array();
$exam = array();
$row = $exam_list[0];
$exam['question_id'] = $row['question_id'];
$exam['class_id'] = $row['class_id'];
$exam['subject_id'] = $row['subject_id'];
$exam['date'] = $row['date'];
$exam['session'] = $row['session'];
$exam['duration'] = $row['duration'];
$exam['question'] = $row['question'];
$exam['correct_answers'] = $row['correct_answers'];

$sql = "select * from answer where question_id=" . $row['question_id'] . " order by label";
$result = $this->db->query($sql)->result_array();
foreach ($result as $row1) {
    $exam[$row1['label']] = $row1['content'];
}
?>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="x_title">
                <div class="panel-title" >
                    <i class="entypo-plus-circled"></i>
                    <?php echo get_phrase('edit_question'); ?>
                </div>
            </div>
            <div class="panel-body">
                <?php
                echo form_open(base_url() . 'index.php?admin/exam_view/' . $exam['class_id'] . '/'
                        . $exam['subject_id'] . '/'
                        . $exam['duration'] . '/'
                        . $exam['date'] . '/'
                        . ($exam['session'] == '' ? '%null' : $exam['session']) . '/save/' . $exam['question_id'], array('class' => 'form-horizontal form-groups-bordered validate', 'target' => '_top'));
                ?>
                <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('question'); ?></label>
                    <div class="col-sm-8">
                        <textarea class="form-control" name="question" rows="7"><?php echo $exam['question']; ?></textarea>
                    </div>
                </div>
                <div class="form-group" style="border-bottom:none">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('answers'); ?></label>
                </div>
                <div class="form-group">
                    <?php
                    for ($i = ord('A'); $i <= ord($max_label); $i++) {
                        ?>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo chr($i); ?></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="answers[]" id="answers_<?php echo chr($i); ?>" value="<?php echo $exam[chr($i)]; ?>" />
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>
                <div class="form-group" style="border-bottom:none; margin-bottom: 0;padding-bottom: 0;">
                    <label class="col-sm-3 control-label"><?php echo get_phrase('correct_answer'); ?></label>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-8">
                        <?php
                        for ($i = ord('A'); $i <= ord($max_label); $i++) {
                            ?>
                            <?php echo chr($i); ?>
                            <input type="radio" name="correct_answers" value="<?php echo chr($i); ?>" style="margin-right: 10px" 
                            <?php
                            if (chr($i) == $exam['correct_answers']) {
                                ?>
                                       checked="checked"
                                       <?php
                                   }
                                   ?>
                                   />
                                   <?php
                               }
                               ?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-5">
                        <button type="submit" class="btn btn-info"><?php echo get_phrase('save'); ?></button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>


