<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<hr />
<div class="box-content">
    <?php echo form_open(base_url() . 'index.php?admin/exams/save', array('class' => 'form-horizontal form-groups-bordered validate', 'target' => '_top')); ?>
    <div class="padded">
        <div class="form-group">
            <label class="col-sm-3 control-label"><?php echo get_phrase('question'); ?></label>
            <div class="col-sm-5">
                <textarea name="question" rows="7" class="form-control" data-validate="required" data-message-required="<?php echo get_phrase('value_required'); ?>"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label"><?php echo get_phrase('answers'); ?>:</label>
        </div>
        <div class="answers-group">
            <div class="form-group answers">
                <label class="col-sm-3 control-label">A</label>
                <div class="col-sm-5">
                    <input type="text" name="answers[]" id="answers_A" class="form-control" data-validate="required" data-message-required="<?php echo get_phrase('value_required'); ?>"/>
                </div>
                <div class="col-sm-1">
                <a href="#" style="line-height: 25px;"  onclick="addRemoveAnswer(this)" ><?php echo get_phrase('add'); ?></a>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label"><?php echo get_phrase('correct_answers'); ?></label>
            <div class="col-sm-5">
                <div class="chk_group">
                    <span class="chks"><label>A</label> <input type="radio" name="correct_answers" value="A" style="margin-right: 10px" checked="checked" /></span>
                </div>
            </div>
        </div>

    </div>
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-5">
            <button class="btn btn-info"><?php echo get_phrase('Add_Next_Question'); ?></button>
        </div>
    </div>
</form>                
</div>  

<script type="text/javascript">

    function get_class_subject(class_id) {
        console.log(class_id);

        $.ajax({
            url: '<?php echo base_url(); ?>index.php?admin/get_class_subject/' + class_id,
            success: function (response)
            {
                $('#subject_selector_holder').html(response);
            }
        });

    }

    var answer_count = 1;
    function addRemoveAnswer(obj) {
        if ($(obj).text() == "<?php echo get_phrase('add') ?>" && answer_count < 26) {
            $(obj).text("<?php echo get_phrase('remove') ?>");
            var htmltext = '<div class="form-group answers">' +
                    '<label class="col-sm-3 control-label">A</label>' +
                    '<div class="col-sm-5">' +
                    '<input type="text" name="answers[]" class="form-control" data-validate="required" data-message-required="<?php echo get_phrase('value_required'); ?>"/>' +
                    '</div>' +
                    '<div class="col-sm-1">' +
                    '<a href="#" style="line-height: 25px;" onclick="addRemoveAnswer(this)" ><?php echo get_phrase('add'); ?></a>' +
                    '</div>' +
                    '</div>';
            $('.answers-group').append(htmltext);
            $('.chk_group').append('<span class="chks"><label>A</label> <input type="radio" name="correct_answers" value="A" style="margin-right: 10px"  data-validate="required" data-message-required="<?php echo get_phrase('value_required'); ?>"/></span>');
            answer_count++;
        } else {
            $(obj).parents('.answers').remove();
            $('.chks').eq(answer_count - 1).remove();
            answer_count--;
        }

        $('.answers').each(function () {
            var codeA = 'A'.charCodeAt(0);
            var label = String.fromCharCode(Number(codeA + $(this).index()));
            $(this).find('label').text(label);
            $(this).find('input[type=text]').attr('id', 'answer_' + label);
        });
        $('.chks').each(function () {
            var codeA = 'A'.charCodeAt(0);
            var label = String.fromCharCode(Number(codeA + $(this).index()));
            $(this).find('label').text(label);
            $(this).find('input[type=radio]').val(label).prop('checked', false);
        });
        $('.chks').eq(0).find('input[type=radio]').prop('checked', true);
    }


</script>