<hr>

 <div class="x_panel" >
            
                <div class="x_title">
                    <div class="panel-title">
					 <?php echo get_phrase('media_information_page'); ?>
					</div>
					</div>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_media_add');" 
    class="btn btn-green btn-sm btn-icon icon-left">
       <i class="entypo-video"></i><?php echo get_phrase('add_media'); ?>
</button>
<br>
 <h3 align="center"> All Media Images and Videos</h3>

<div style="clear:both;"></div>
<br>
<div class="table-responsive">

 								<?php 
                                $media	=	$this->db->get('media' )->result_array();
                                foreach($media as $row):?>
 								<div class="col-md-55">
                        <div class="thumbnail">
                          <div class="image view view-first">
                            <img style="width: 100%; display: block;" src="<?php echo base_url().'uploads/media_files/'.$row['file_name']; ?>" alt="image" />
                            <div class="mask">
                              <p><?php echo $row['title']?></p>
                              <div class="tools tools-bottom">
								<a  onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_media_edit/<?php echo $row['media_id']?>');">
                                <i class="fa fa-pencil"></i>
                               </a>                               
							   <a href="<?php echo base_url();?>index.php?admin/media/delete/<?php echo $row['media_id']?>" 
                        onclick="return confirm('Are you sure to delete?');">
                        <i class="fa fa-times"></i>
                        </a>
                              </div>
                            </div>
                          </div>
                          <div class="caption">
                            <p><?php echo $row['description']?></p>
                          </div>
                        </div>
                      </div>
					  <?php endforeach;?>
					  
					  <?php 
                                $media	=	$this->db->get('media' )->result_array();
                                foreach($media as $row):?>
 								<div class="col-md-55">
 
                        <div class="thumbnail">
                          <div class="image view view-first">
                            <img style="width: 100%; display: block;" src="<?php echo base_url().'uploads/media_files/video.jpg'; ?>" alt="image" />
                            <div class="mask">
                              <p><?php echo $row['title']?></p>
                              <div class="tools tools-bottom">
                                <a  onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_media_edit/<?php echo $row['media_id']?>');">
                                <i class="fa fa-pencil"></i>
                               </a>
                               <a href="<?php echo base_url();?>index.php?admin/media/delete/<?php echo $row['media_id']?>" 
                        onclick="return confirm('Are you sure to delete?');">
                        <i class="fa fa-times"></i>
                        </a>
                              </div>
                            </div>
                          </div>
                          <div class="caption">
                            <p><a  onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_media_watch/<?php echo $row['media_id']?>');" 
                        class="btn btn-green btn-sm btn-icon icon-left">
                            <i class="entypo-video"></i>
                            Watch Now
                    </a>
					</p>
                          </div>
                        </div>
                      </div>
					  <?php endforeach;?>



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
