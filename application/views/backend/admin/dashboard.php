
<!-- Resources -->

<style>
    #chartdiv2, #chartdiv {
        width		: 100%;
        height		: 300px;
        font-size	: 11px;
    }					
    .style2 {font-size: 24px}
</style>

<!-- FullCalendar -->
<link href="assets/vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">

<?php $count_all = $this->db->count_all('student') + $this->db->count_all('teacher') + $this->db->count_all('parent') + $this->db->count_all('librarian') + $this->db->count_all('accountant'); ?>
<?php
$check = array('date' => date('Y-m-d'), 'status' => '1');
$query = $this->db->get_where('attendance', $check);
$present_today = $query->num_rows();
?>
<div class="row">
    <div class="col-md-12" role="main">
        <div class="row tile_count">
            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                <span class="count_top"><i class="fa fa-group"></i> Total <?php echo get_phrase('student'); ?></span>
                <div class="count"><?php echo $this->db->count_all('student'); ?></div>
                <span class="count_bottom"><i class="green"><?php echo intval($this->db->count_all('student') * 100 / $count_all) ?>% </i> From all Account</span>
            </div>
            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                <span class="count_top"><i class="entypo-user"></i> Total <?php echo get_phrase('teacher'); ?></span>
                <div class="count"><?php echo $this->db->count_all('teacher'); ?></div>
                <span class="count_bottom"><i class="green"><?php echo intval($this->db->count_all('teacher') * 100 / $count_all) ?>% </i> From all Account</span>
            </div>
            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                <span class="count_top"><i class="entypo-users"></i> Total <?php echo get_phrase('parent'); ?></span>
                <div class="count"><?php echo $this->db->count_all('parent'); ?></div>
                <span class="count_bottom"><i class="green"><?php echo intval($this->db->count_all('parent') * 100 / $count_all) ?>% </i> From all Account</span>
            </div>
            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                <span class="count_top"><i class="entypo-book"></i> Total <?php echo get_phrase('librarian'); ?></span>
                <div class="count"><?php echo $this->db->count_all('librarian'); ?></div>
                <span class="count_bottom"><i class="green"><?php echo intval($this->db->count_all('librarian') * 100 / $count_all) ?>% </i> From all Account</span>
            </div>
            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                <span class="count_top"><i class="entypo-user-add"></i> Total <?php echo get_phrase('Accountant'); ?></span>
                <div class="count"><?php echo $this->db->count_all('accountant'); ?></div>
                <span class="count_bottom"><i class="green"><?php echo intval($this->db->count_all('accountant') * 100 / $count_all) ?>% </i> From all Account</span>
            </div>
            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                <span class="count_top"><i class="fa fa-gear"></i> <?php echo get_phrase('all_enquiry'); ?></span>
                <div class="count"><?php echo $this->db->count_all('enquiry'); ?></div>
				<span class="count_bottom"><i class="green"><?php echo intval($this->db->count_all('enquiry') * 100 / $count_all) ?>% </i> From all Enquiries</span>

            </div>
            <!--            <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-envelope"></i> <?php echo get_phrase('all_message'); ?></span>
                            <div class="count"><?php echo $this->db->count_all('message'); ?></div>
                        </div>
                        <div class="col-md-2 col-sm-3 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-clock-o"></i> <?php echo get_phrase('attendance'); ?></span>
                            <div class="count">0</div>
                        </div>-->
        </div>
    </div>

</div>


<div class="row">
    <div class="col-md-8 col-sm-12 col-xs-12">    
        <div class="x_panel " data-collapsed="0">
            <div class="x_title">
                <?php echo get_phrase('Charts'); ?>
            </div>
            <div class="x-content">
                <div id="chartdiv2"></div> 
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-12 col-xs-12">    
        <div class="x_panel " data-collapsed="0">
            <div class="x_title">
                <?php echo get_phrase('Charts'); ?>
            </div>
            <div class="x-content">
                <div id="chartdiv"></div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-8">
        <div class="x_panel">
            <div class="x_title">
                <h2>Calendar Events <small>Sessions</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">

                <div id='calendar'></div>

            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2><?php echo get_phrase('New_Students'); ?></h2>
                <div class="clearfix"></div>
            </div>
            <ul class="list-unstyled top_profiles scroll-view">
                <?php
                $new_students_list = $this->crud_model->new_student_list();
                foreach ($new_students_list as $student):
                    ?>
                    <li class="media event">
                        <a class="pull-left border-aero profile_thumb" style="background-image:url('<?php echo $student['face_file'] ?>');">
                        </a>
                        <div class="media-body">
                            <a class="title" href="<?php echo base_url(); ?>index.php?<?php echo $this->session->userdata('login_type')?>/student_information/<?php echo $student["class_id"]?>"><?php echo $student['name'] ?></a>
                            <p><strong><?php echo $student['birthday'] ?>. </strong> <?php echo $student['sex'] ?> </p>
                            <p> <small>Phone: <?php echo $student['phone'] ?>,</small>
                                <strong>Email: <?php echo $student['email'] ?></strong>
                            </p>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>


<script src="assets/vendors/echarts/dist/echarts.min.js"></script>

<!-- NProgress -->
<script src="assets/vendors/nprogress/nprogress.js"></script>
<!-- FullCalendar -->
<script src="assets/vendors/moment/min/moment.min.js"></script>
<script src="assets/vendors/fullcalendar/dist/fullcalendar.min.js"></script>
<script>
    $(function () {
        init_calendar();
    });
    function  init_calendar() {

        if (typeof ($.fn.fullCalendar) === 'undefined') {
            return;
        }
        console.log('init_calendar');
        var date = new Date(),
                d = date.getDate(),
                m = date.getMonth(),
                y = date.getFullYear(),
                started,
                categoryClass;
        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay,listMonth'
            },
            selectable: true,
            selectHelper: true,
            select: function (start, end, allDay) {
                $('#fc_create').click();
                started = start;
                ended = end;
                $(".antosubmit").on("click", function () {
                    var title = $("#title").val();
                    if (end) {
                        ended = end;
                    }

                    categoryClass = $("#event_type").val();
                    if (title) {
                        calendar.fullCalendar('renderEvent', {
                            title: title,
                            start: started,
                            end: end,
                            allDay: allDay
                        },
                                true // make the event "stick"
                                );
                    }

                    $('#title').val('');
                    calendar.fullCalendar('unselect');
                    $('.antoclose').click();
                    return false;
                });
            },
            eventClick: function (calEvent, jsEvent, view) {
                $('#fc_edit').click();
                $('#title2').val(calEvent.title);
                categoryClass = $("#event_type").val();
                $(".antosubmit2").on("click", function () {
                    calEvent.title = $("#title2").val();
                    calendar.fullCalendar('updateEvent', calEvent);
                    $('.antoclose2').click();
                });
                calendar.fullCalendar('unselect');
            },
            editable: true,
            events: [<?php
                $notices = $this->db->get('noticeboard')->result_array();
                foreach ($notices as $row):
                    ?>
                    {
                        title: "<?php echo $row['notice_title']; ?>",
                        start: new Date(<?php echo date('Y', $row['create_timestamp']); ?>, <?php echo date('m', $row['create_timestamp']) - 1; ?>, <?php echo date('d', $row['create_timestamp']); ?>),
                        end: new Date(<?php echo date('Y', $row['create_timestamp']); ?>, <?php echo date('m', $row['create_timestamp']) - 1; ?>, <?php echo date('d', $row['create_timestamp']); ?>)
                    },
    <?php
endforeach
?>
            ]
        });
    }
</script>

<script>

    $(function () {
        //        $('#sel_location_modal').slideDown('slow');
<?php if ($this->session->userdata('isFirst')) { ?>
            showSelectLocationModal();
<?php } ?>
        init_echarts1();
    });
    function init_echarts1() {
        if (typeof (echarts) === 'undefined') {
            return;
        }
        console.log('init_echarts');
        var theme = {
            color: [
                '#3498DB', '#9B59B6', '#8abb6f', '#759c6a', '#bfd3b7'
            ],
            textStyle: {
                fontFamily: 'Arial, Verdana, sans-serif'
            }
        };
        if ($('#chartdiv2').length) {

            var echartLine = echarts.init(document.getElementById('chartdiv2'), theme);
            echartLine.setOption({
                title: {
                    text: 'Statics Chart',
                    //                    subtext: 'Subtitle'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    x: 220,
                    y: 40,
                    data: ['<?php echo get_phrase('section'); ?>', '<?php echo get_phrase('transportations'); ?>', '<?php echo get_phrase('expenses'); ?>']
                },
                toolbox: {
                    show: true,
                    feature: {
                        magicType: {
                            show: true,
                            title: {
                                line: 'Line',
                                bar: 'Bar',
                                stack: 'Stack',
                                tiled: 'Tiled'
                            },
                            type: ['line', 'bar', 'stack', 'tiled']
                        },
                        restore: {
                            show: true,
                            title: "Restore"
                        },
                        saveAsImage: {
                            show: true,
                            title: "Save Image"
                        }
                    }
                },
                calculable: true,
                xAxis: [{
                        type: 'category',
                        boundaryGap: false,
                        data: ['class', 'subject', 'document']
                    }],
                yAxis: [{
                        type: 'value'
                    }],
                series: [{
                        name: '<?php echo get_phrase('section'); ?>',
                        type: 'line',
                        smooth: true,
                        itemStyle: {
                            normal: {
                                areaStyle: {
                                    type: 'default'
                                }
                            }
                        },
                        data: [<?php echo $this->db->count_all('class'); ?>, <?php echo $this->db->count_all('subject'); ?>, <?php echo $this->db->count_all('document'); ?>,<?php echo $this->db->count_all('news'); ?>, <?php echo $this->db->count_all('question'); ?>, <?php echo $this->db->count_all('todays_thought'); ?>]
                    }, {
                        name: '<?php echo get_phrase('transportations'); ?>',
                        type: 'line',
                        smooth: true,
                        itemStyle: {
                            normal: {
                                areaStyle: {
                                    type: 'default'
                                }
                            }
                        },
                        data: [<?php echo $this->db->count_all('assignment'); ?>, <?php echo $this->db->count_all('document'); ?>, <?php echo $this->db->count_all('task_manager'); ?>,<?php echo $this->db->count_all('news'); ?>, <?php echo $this->db->count_all('question'); ?>, <?php echo $this->db->count_all('todays_thought'); ?>]
                    }, {
                        name: '<?php echo get_phrase('expenses'); ?>',
                        type: 'line',
                        smooth: true,
                        itemStyle: {
                            normal: {
                                areaStyle: {
                                    type: 'default'
                                }
                            }
                        },
                        data: [<?php echo $this->db->count_all('news'); ?>, <?php echo $this->db->count_all('question'); ?>, <?php echo $this->db->count_all('todays_thought'); ?>,<?php echo $this->db->count_all('assignment'); ?>, <?php echo $this->db->count_all('document'); ?>, <?php echo $this->db->count_all('task_manager'); ?>]
                    }]
            });
        }
        if ($('#chartdiv').length) {

            var echartPie = echarts.init(document.getElementById('chartdiv'), theme);
            echartPie.setOption({
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    x: 'center',
                    y: 'bottom',
                    data: ['<?php echo get_phrase('section'); ?>', '<?php echo get_phrase('transportations'); ?>', '<?php echo get_phrase('expenses'); ?>']
                },
                toolbox: {
                    show: true,
                    feature: {
                        magicType: {
                            show: true,
                            type: ['pie', 'funnel'],
                            option: {
                                funnel: {
                                    x: '25%',
                                    width: '50%',
                                    funnelAlign: 'left',
                                    max: 1548
                                }
                            }
                        },
                        restore: {
                            show: true,
                            title: "Restore"
                        },
                        saveAsImage: {
                            show: true,
                            title: "Save Image"
                        }
                    }
                },
                calculable: true,
                series: [{
                        name: 'Current Status',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '48%'],
                        data: [{
                                value: <?php echo $this->db->count_all('section'); ?>,
                                name: '<?php echo get_phrase('section'); ?>'
                            }, {
                                value: <?php echo $this->db->count_all('transport'); ?>,
                                name: '<?php echo get_phrase('transportations'); ?>'
                            }, {
                                value: <?php echo $this->db->count_all('expense_category'); ?>,
                                name: '<?php echo get_phrase('expenses'); ?>'
                            }]
                    }]
            });
            var dataStyle = {
                normal: {
                    label: {
                        show: false
                    },
                    labelLine: {
                        show: false
                    }
                }
            };
            var placeHolderStyle = {
                normal: {
                    color: 'rgba(0,0,0,0)',
                    label: {
                        show: false
                    },
                    labelLine: {
                        show: false
                    }
                },
                emphasis: {
                    color: 'rgba(0,0,0,0)'
                }
            };
        }
    }
</script>
