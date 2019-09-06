<!DOCTYPE html>
<html>
<head>
    <title>ID CARD</title>
	<div class="alert alert-info">Note that you are to double click where you want to add your information below in the ID CARD template</div>
    <link rel="stylesheet" type="text/css" href="assets/css/skins/default.css">
    <style type="text/css">
        body{
            padding: 0;
            margin: 0;
        }
        .area{
            width: 730px;
            height: 520px;
            margin-top: 0px;
            border: 1px solid #AAA;
        }
        .side{
            width: 350px;
            height: 500px;
            margin-left: 10px;
            margin-top: 10px;
            border: 1px solid #AAA;
            border-radius: 10px;
            float: left;
        }
        img{
            margin-top: 15px;
        }
        .title{
            font-size: 20px;
            color: #176CB4;
            margin-top: 8px;
            font-weight: bold;
        }
        .title_bottom{
            font-size: 14px;
            color: #999;
            font-weight: bold;
        }
        .photo{
            /*border: 1px solid #AAA;*/
            border-radius: 5px;
            border: none;
            margin-top: 4px;
        }
        .title input{
            border: none;
            font-size: 22px;
            text-align: center;
        }
        .title p{
            font-size: 22px;
            border: none;
            text-align: center;
        }
        .title_bottom input{
            border: none;
            width: 300px;
            text-align: center;
        }
        .title_bottom p{
            border: none;
            width: 300px;
            text-align: center;
            font-size: 14px;
        }
        .name{
            font-size: 20px;
            color: #020230;
            margin-top: 4px;
            font-weight: bold;
        }
        .name input{
            border: none;
            width: 300px;
            text-align: center;
        }
        .name p{
            font-size: 20px;
            border: none;
            width: 300px;
            text-align: center;
        }
        label{
            color: #2E4F4F;
            height: 16px;
        }
        .detail-content{
            margin-left: 35px;
        }
        .detail-content input{
            color: #999;
        }
        .detail-content p{
            color: #999;
        }
    </style>
    <style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    margin-top: 400px;
    padding: 20px;
    border: 1px solid #888;
    width: 770px;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    height: 18px;
    margin-top: -10px;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
    <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
    <script src="https://files.codepedia.info/files/uploads/iScripts/html2canvas.js"></script>
    <script type="text/javascript" src="js/html2canvas.min.js"></script>
</head>
<body>
<hr/>
<br/>
<br/>
<div class="container">
    <div id="myModal" class="modal">
      <!-- Modal content -->
      <div id="modal-content" class="modal-content">
        <div><span class="close">&times;</span></div>
        <center><a id="btn-Convert-Html2Image" href="#">Download</a></center>
      </div>

    </div>

    <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-11">
        <div class="row">
            <?php echo form_open(base_url() . 'index.php?admin/id_card/' , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
                <div class="col-md-1"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Select a accountant</label>
                        <select name="accountant" id="accountant_id" class="form-control" style="width: 250px;">
                            <option value=""><?php echo get_phrase('select');?></option>
                            <?php 
                            $accountants = $this->db->get('accountant')->result_array();
                            foreach($accountants as $row):
                            ?>
                                <option value="<?php echo $row['accountant_id'];?>" <?php if ($accountant_id == $row['accountant_id']) echo 'selected';?>>
                                        <?php echo $row['name'];?>
                                </option>
                            <?php
                            endforeach;
                            ?>
                        </select>
                        <br/>
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <center>
                                <label>Image for accountant's Signature </label>
                                <span class="btn btn-xs btn-file" style="background-color: #DDD;margin-left: 38px;">
                                    <span class="fileinput-new">Upload</span>
                                    <span class="fileinput-exists">Change</span>
                                    <input type="file" name="userfile" accept="image/*" onChange="readURL_accountant(this);">
                                </span>
                            </center>
                        </div>
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <center>
                                <label>Image for Principle's Signature </label>
                                <span class="btn btn-xs btn-file" style="background-color: #DDD;margin-left: 33px;">
                                    <span class="fileinput-new">Upload</span>
                                    <span class="fileinput-exists">Change</span>
                                    <input type="file" name="userfile" accept="image/*" onChange="readURL_principle(this);">
                                </span>
                            </center>
                        </div>
                        <div style="margin-left: 50px;">(150 X 30)</div>
                        <!-- </div> -->
                        <!-- <input type='file' onchange="readURL(this);" value="Image for accountant's Signature" /> -->
                        <!-- <div class="row">
                            <div class="col-md-4">
                                <input type="radio" name="id_type" value="v" onclick="vertical_show()" checked="true"> Vertical<br>
                            </div>
                            <div class="col-md-6">
                                <input type="radio" name="id_type" value="h" onclick="horizontal_show()"> Horizontal<br>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div>
                                <span class="btn btn-white btn-file">
                                    <span class="fileinput-new">Select image</span>
                                    <span class="fileinput-exists">Change</span>
                                    <input type="file" name="userfile" accept="image/*">
                                </span>
                                <a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput">Remove</a>
                            </div>
                            <div class="fileinput-new thumbnail" style="width: 100px; height: 100px;" data-trigger="fileinput">
                                <img src="http://placehold.it/200x200" alt="...">
                            </div>
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 114px; max-height: 200px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <br/>
                    <br/>
                    <br/>
                    <input type="text" name="hidden" value="photo_submit" style="display: none;">
                    <button type="submit" class="btn btn-info"><?php echo get_phrase('Submit');?></button>
                    
                </div>
            <?php echo form_close();?>
        </div>

        <hr/>

        <div id="html-content-holder" class="area" style="background-color: #fff;">
            <div class="side">
                <center>
                    <img src="uploads/1.jpg" width="52" height="47">
                    <br/>
                    <div class="title">
                        <p>Optimum Linkup Computers</p>
                    </div>
                    <div class="title_bottom">
                        <p>2014 Illinois Avenue | 503-762-2429</p>
                    </div>
                    <!-- <div class="photo"> -->
                        <img class="photo" id="photo" src="" width="114" height="122">
                    <!-- </div> -->
                    <div class="name">
                        <p>Optimum Linkup</p>
                    </div>
                </center>
                <div style="height: 10px;"></div>
                <div class="detail-content" style="font-size: 12px;width: 320px;height: 26px;">
                    <div style="float: left;padding-right: 7px;"><label>Admin. No. :</label></div>
                    <div style="float: left;padding-right: 7px;"><p>08/2015-17</p></div>
                    <div style="float: left;padding-right: 7px;"><label>Cource :</label></div>
                    <div style="float: left;padding-right: 7px;"><p>B. COM</p></div>
                </div>
                <div class="detail-content" style="width: 320px;height: 26px;font-size: 12px;">
                    <div style="float: left;padding-right: 7px;"><label>Date of birth :</label></div>
                    <div style="float: left;padding-right: 7px;"><p>20/09/1987</p></div>
                    <div style="float: left;padding-right: 7px;"><label>Blood Group :</label></div>
                    <div style="float: left;padding-right: 7px;"><p>B +ve</p></div>
                </div>
                <div class="detail-content" style="width: 320px;height: 26px;font-size: 12px;">
                    <div style="float: left;padding-right: 7px;"><label>Address :</label></div>
                    <div style="float: left;padding-right: 7px;"><p> 2014 Illinois Avenue | 503-762-2429</p></div>
                </div>
                <div class="detail-content" style="width: 320px;height: 26px;font-size: 12px;">
                    <div style="float: left;padding-right: 7px;"><label>Phone :</label></div>
                    <div style="float: left;padding-right: 7px;"><p>+91 90325 81559</p></div>
                    <div style="float: left;padding-right: 7px;"><label>Valid Till :</label></div>
                    <div style="float: left;padding-right: 7px;"><p>31 March, 2018</p></div>
                </div>
                <br/>
                <div class="detail-content" style="width: 320px;height: 20px;font-size: 12px;">
                    <div style="padding-right: 7px;height: 30px;">
                        <label>accountant's signature :</label>
                        <img id="accountant_sign" src="uploads/sign.png" alt="" style="margin-top: -2px;" />
                    </div>
                    <div style="padding-right: 7px;height: 30px;">
                        <label>Principle's signature :</label>
                        <img id="principle_sign" src="uploads/sign.png" alt="" style="margin-top: -2px;" />
                    </div>
                </div>
            </div>
            <div class="side">
                <center>
                    <img src="uploads/1.jpg" width="52" height="47">
                </center>
                <div style="height: 50px;"></div>
                <div class="detail-content">
                    <label>Our Office</label>
                    <div><p>761 Rebecca Jane Dr, Mooresville,</p></div>
                    <div><p>NC, 28115</p></div>
                </div>
                <div style="height: 7px;"></div>
                <div class="detail-content">
                    <label>Phone</label>
                    <div><p>+2348026634951</p></div>
                    <div><p>+2348026634951</p></div>
                </div>
                <div style="height: 7px;"></div>
                <div class="detail-content">
                    <label>Email</label>
                    <div><p>info@optimumlinkupsoftware.com</p></div>
                    <div><p>support@optimumlinkupsoftware.com</p></div>
                </div>
                <div style="height: 7px;"></div>
                <div class="detail-content">
                    <label>Website</label>
                    <p>www.optimumlinkupsoftware.com</p>
                </div>
            </div>
        </div>
        <br/>
        <hr/>

        <input type="button" name="" id="myBtn" class="btn btn-info" value="Preview">

        <hr/>
        <div id="previewImage"></div>
    </div>
    </div>
</div>
</body>

<script>
var element = $("#html-content-holder"); // global variable
var getCanvas; // global variable
$(document).ready(function(){
    show_photo();
})

$("#btn-Preview-Image").on('click', function () {
         html2canvas(element, {
         onrendered: function (canvas) {
                // $("#previewImage").append(canvas);
                getCanvas = canvas;
             }
         });
    });
$("#btn-Convert-Html2Image").on('click', function () {
    var imgageData = getCanvas.toDataURL("image/png");
    // Now browser starts downloading it instead of just showing it
    var newData = imgageData.replace(/^data:image\/png/, "data:application/octet-stream");
    $("#btn-Convert-Html2Image").attr("download", "Id_Card.png").attr("href", newData);
    });

var times = 1;
$('#accountant_id').on('click', function(){
    show_photo();
});

function vertical_show() {
    $('#html-content-holder').show();
}

function horizontal_show() {
    $('#html-content-holder').hide();
}

function show_photo() {
    if (times) {
        var select = $('#accountant_id');
        var value = select[0].value;
        var photo = document.getElementById("photo");
        photo.src = "uploads/accountant_image/"+value+".jpg";
        times = -1;
    }
    times++;
}

var temp_element;

$('p').on('dblclick', function() {
    temp_element = $(this);
    var value = $(this).html();
    var parent = $(this).parent();
    console.log(value);
    // alert("OK");
    $(this).hide();
    parent.append( "<div id='child'><input type='text' id='text' onchange='myFunction()' onblur='myFunction()' value='"+value+"'></div>" );
});

function myFunction() {
    var elem = document.getElementById("text");
    var value = elem.value;
    console.log(temp_element);
    temp_element.show();
    temp_element.html(value);
    elem.parentNode.removeChild(elem);

}

function readURL_accountant(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#accountant_sign')
                .attr('src', e.target.result)
                .width(150)
                .height(24);
        };
        reader.readAsDataURL(input.files[0]);
    }
}

function readURL_principle(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#principle_sign')
                .attr('src', e.target.result)
                .width(150)
                .height(24);
        };
        reader.readAsDataURL(input.files[0]);
    }
}
</script>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
var elem2 = document.getElementById("modal-content");

// When the user clicks the button, open the modal 
btn.onclick = function() {
    var elem = document.getElementById("html-content-holder");
    var temp = elem.cloneNode(true);
    elem2.append(temp);
    modal.style.display = "block";
    var elem = document.getElementById("html-content-holder");
    html2canvas(elem, {
    onrendered: function (canvas) {
        // $("#previewImage").append(canvas);
        getCanvas = canvas;
     }
    });
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    var elem = document.getElementById("html-content-holder");
    elem.parentNode.removeChild(elem);
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        var elem = document.getElementById("html-content-holder");
        elem.parentNode.removeChild(elem);
        modal.style.display = "none";
    }
}
</script>
</html>