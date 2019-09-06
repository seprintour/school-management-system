<hr>
<div class="x_panel" >
            
                <div class="x_title">
                    <div class="panel-title">
					 <?php echo get_phrase('task_information_page'); ?>
					</div>
					</div>
<br>
           &nbsp;&nbsp;&nbsp;&nbsp;
<button onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_task_manager_add');" 
    class="btn btn-primary">
        <?php echo get_phrase('task_manager'); ?>
</button>
<br>
<div class="table-responsive">
<table class="table table-bordered table-striped datatable" id="table-2">
    <thead>
        <tr>
            <th>#</th>
            <th><?php echo get_phrase('task_name');?></th>
            <th><?php echo get_phrase('description');?></th>
            <th><?php echo get_phrase('priority');?></th>
            <th><?php echo get_phrase('date_assign');?></th>
            <th><?php echo get_phrase('assign_to');?></th>
            <th><?php echo get_phrase('task_status');?></th>
            <th><?php echo get_phrase('options');?></th>
        </tr>
    </thead>

    <tbody>
	 <?php 
                                $task_managers	=	$this->db->get('task_manager' )->result_array();
                                foreach($task_managers as $row):?>
            <tr>
                <td><?php echo $row['task_manager_id']?></td>
                <td><?php echo $row['name']?></td>
                <td><?php echo $row['description']; ?></td>
                <td><?php echo $row['priority']?></td>
				
				<td><?php echo $row['date']?></td>
                <td><?php echo $row['user']; ?></td>
                <td><?php echo $row['status']?></td>
				
                <td>
                    <a  onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_task_manager_edit/<?php echo $row['task_manager_id']?>');" 
                        class="btn btn-info btn-sm btn-icon icon-left">
                            <i class="entypo-pencil"></i>
                            Edit
                    </a>
                    <a href="<?php echo base_url();?>index.php?admin/task_manager/delete/<?php echo $row['task_manager_id']?>" 
                        class="btn btn-danger btn-sm btn-icon icon-left" onclick="return confirm('Are you sure to delete?');">
                            <i class="entypo-cancel"></i>
                            Delete
                    </a>
                </td>
            </tr>
			               <?php endforeach;?>

    </tbody>
</table>
</div>

</div>



<script type="text/javascript">
    jQuery(window).load(function ()
    {
        var $ = jQuery;

        $("#table-2").dataTable({
            "sPaginationType": "bootstrap",
            "sDom": "<'row'<'col-xs-3 col-left'l><'col-xs-9 col-right'<'export-data'T>f>r>t<'row'<'col-xs-3 col-left'i><'col-xs-9 col-right'p>>"
        });

        $(".dataTables_wrapper select").select2({
            minimumResultsForSearch: -1
        });

        // Highlighted rows
        $("#table-2 tbody input[type=checkbox]").each(function (i, el)
        {
            var $this = $(el),
                    $p = $this.closest('tr');

            $(el).on('change', function ()
            {
                var is_checked = $this.is(':checked');

                $p[is_checked ? 'addClass' : 'removeClass']('highlight');
            });
        });

        // Replace Checboxes
        $(".pagination a").click(function (ev)
        {
            replaceCheckboxes();
        });
    });
</script>
