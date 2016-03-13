<%-- 
    Document   : FileManager
    Created on : Apr 2, 2015, 11:42:12 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="Constants" class="ua.aits.Carpath.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <link href="${Constants.URL}css/bootstrap.min.css" rel="stylesheet" />
        <link href="${Constants.URL}css/style.css" rel="stylesheet" />
        <link href="${Constants.URL}css/admin.css" rel="stylesheet" />
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <style>
            body {
                margin-top: 0px;
            }
        </style>
    </head>
    <body>
         <div class="img-upl">
  <div class="">
    <div class="">
      <div class="">
          <div class="image-upload-modal">
              <span class="arrow-left-img" aria-hidden="true"><img src="${Constants.URL}img/arrow-left-icon.png" /></span>
            <label class="btn" for="file-input">
                <button class="btn btn-primary" disabled="disabled" style="opacity: 100">Upload from computer</button>
            </label>
                <input class="" id="file-input" type="file"  accept="image/*" multiple/>
        <button class="btn btn-primary" id="createfolder" type="button" style="margin-right: 10px;">Create folder</button>       
        <button type="button" id="close-modal" class="btn btn-danger" data-dismiss="modal">Close</button>
       </div>
            <div class="image-upload-folder">
                <hr>
                <input type="text" class="form-control" id="foldernametext" value="New Folder" name="name" />
                <button class="btn btn-primary" id="create-folder" type="button">Create folder</button>  
                <button class="btn btn-danger" id="close-add-folder" type="button">Cancel</button>  
            </div>
          <hr>
          <span class="info-folder">Maximum download size - 3 MB</span>
          <div class="img-content-show-all"></div>
      </div>
    </div>
  </div>
</div>
    <span id="returnedhtml" style="display: none"></span>
    </body>
    <script>
        $(document).ready(function () {
            initGalerry();
        });
        
        $("#createfolder").click(function(){
            $(".image-upload-folder").toggle("slow");
        });
        $("#close-modal").click(function(){
            window.parent.imageInserted(); 
        });
        $("#close-add-folder").click(function(){
            $(".image-upload-folder").toggle("slow");
        });
        
        $('.img-upl').on('change', '#file-input', function() {
            
        var result = [];
        var len = $(this).get(0).files.length;
        var count = 1;
        for (var i = 0; i < $(this).get(0).files.length; ++i) {
            var data = new FormData();
        data.append('upload', $(this).get(0).files[i]);
        data.append("path", $(".img-content-show-all").attr("realpath"));
        jQuery.ajax({
                    url: '${Constants.URL}uploadFile',
                    data: data,
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: 'POST',
                    success: function(data){
                        $("#returnedhtml").append(data);
                        if(count === len) {
                            console.log("lll");
                            completeAjaxCall();
                        }
                        count++;
                            
                    }
                });
        }   
        });
        
        function completeAjaxCall(){
        var path = "";
            $("#returnedhtml a").each(function( index ) {
                path += $(this).find("img").attr("realpath") + ",";
            });
            if("${ckeditor}" === "" && "${num}" === "") {
                if("${type}" === "avatar") {
                    $("#avatarUpload .img-content", window.parent.document).append($("#returnedhtml").html());
                    $("#avatarUpload .img-input-box", window.parent.document).remove();
                    $('#avatarUpload .image-upload', window.parent.document).append('<button type="button" id="avatarBtn"  class="btn btn-primary img-input-box" data-toggle="modal" data-target="#avatarModal">Browse avatar</button>');
                    $("#avatar-path", window.parent.document).val(path.slice(0,-1));  
                }
                else if("${type}" === "panorama-file"){
                    $("<span class='upload-success'><img src='"+"${Constants.URL}"+"img/symbol_check.png'/> Uploaded! <span class='panorama-name'>("+data+")</span> </span> <span class='remove-panorama'>Remove</span>").appendTo("#panorama-upload-block", window.parent.document);
                    $("#panorama-upload-block .btn-file", window.parent.document).hide();
                    $(".remove-panorama", window.parent.document).attr("panorama-name", path.slice(0,-1));
                    $("#fullname-panorama", window.parent.document).val(path.slice(0,-1)); 
                }
                else {
                    $("#imageUpload .img-content", window.parent.document).append($("#returnedhtml").html());
                    $("#imageUpload .img-input-box", window.parent.document).remove();
                    $('#imageUpload .image-upload', window.parent.document).append('<button type="button" id="dialogBtn"  class="btn btn-primary img-input-box" data-toggle="modal" data-target="#myModal">Browse image</button>');
                    var real = $("#real-img-path", window.parent.document).val();        
                    $("#real-img-path", window.parent.document).val(real + "," + path.slice(0,-1));
                }
            
            initGalerry();
            $(".img-content-show-all").removeAttr("current");
            $(".img-content-show-all").removeAttr("realpath");
            window.parent.imageInserted(); 
                    }    else {
                    window.opener.CKEDITOR.tools.callFunction("${num}", ""+"${Constants.URL}"+ path +"","");
                    window.close();
                    }
        }
        
        function initGalerry(){
           getFiles("",getParameterByName('path').replace(/,/g,"/")); 
        }

        function insertImage(){

        $(".img-content-show-all img:not(.remove-icon)").click(function() {
            var name = $(this).attr("name");
            var path = $(this).attr("realpath");
            if($(this).attr("type") === "img"){
                if("${ckeditor}" === "" && "${num}" === "" && "${type}" === "") {
                    $("#imageUpload .img-content", window.parent.document).append("<a class='returnImage' data-url='"+"${Constants.URL}"+"img/markerImages/" + name + "'>"
                                + "<img src='"+"${Constants.URL}"+ path + name + "' alt='" + path + name + "'  /><img src='"+"${Constants.URL}"+"img/remove.png' class='remove-icon'/></a>");
            
            $("#imageUpload .img-input-box", window.parent.document).remove();
            $('#imageUpload .image-upload', window.parent.document).append('<button type="button" id="dialogBtn"  class="btn btn-primary img-input-box" data-toggle="modal" data-target="#myModal">Browse image</button><button type="button" id="dialogBtnArchive"  class="btn btn-primary img-input-box" data-toggle="modal" style="margin-left: 5px;" data-target="#myModal">Browse archive</button>');
            var real = $("#real-img-path", window.parent.document).val();        
            $("#real-img-path", window.parent.document).val(real + "," + path + name);
            initGalerry();
            $("#imageUpload .img-content-show-all").removeAttr("current");
            $("#imageUpload .img-content-show-all").removeAttr("realpath");
            window.parent.imageInserted();
            }
            else if("${type}" === "avatar")   {
               $("#avatarUpload .img-content", window.parent.document).append("<a class='returnImage' data-url='"+"${Constants.URL}"+"img/markerImages/" + name + "'>"
                                + "<img src='"+"${Constants.URL}"+ path + name + "' alt='" + path + name + "'  /><img src='"+"${Constants.URL}"+"img/remove.png' class='remove-icon'/></a>");
            
            $("#avatarUpload .img-input-box", window.parent.document).remove();
            $('#avatarUpload .image-upload', window.parent.document).append('<button type="button" id="avatarBtn"  class="btn btn-primary img-input-box" data-toggle="modal" data-target="#avatarModal">Browse avatar</button><button type="button" id="avatarBtnArchive"  class="btn btn-primary img-input-box" data-toggle="modal" style="margin-left: 5px;" data-target="#avatarModalArchive">Browse archive</button>');
            $("#avatar-path", window.parent.document).val(path + name);
            initGalerry();
            $("#avatarUpload .img-content-show-all").removeAttr("current");
            $("#avatarUpload .img-content-show-all").removeAttr("realpath");
            window.parent.imageInserted();
            }
            else if("${type}" === "panorama-file") {
                $("<span class='upload-success'><img src='"+"${Constants.URL}"+"img/symbol_check.png'/> Uploaded! <span class='panorama-name'>("+data+")</span> </span> <span class='remove-panorama'>Remove</span>").appendTo("#panorama-upload-block", window.parent.document);
                    $("#panorama-upload-block .btn-file", window.parent.document).hide();
                    $(".remove-panorama", window.parent.document).attr("panorama-name", path.slice(0,-1));
                    $("#fullname-panorama", window.parent.document).val(path.slice(0,-1));
                    window.parent.imageInserted();
                    
            }
            else if("${type}" === "slider") {
                        $("#imageUpload .img-content", window.parent.document).append("<div class='col-lg-4 slider-block'><a class='returnImage' data-url='"+"${Constants.URL}" + path+name + "'>"
                                + "<img src='"+"${Constants.URL}"+ path+name + "' alt='" + path+name + "'  /><img src='"+"${Constants.URL}"+"img/remove.png' class='remove-icon'/></a>"
                    +"<div class='col-lg-12 margintop30 field'>"
                                            +"<div class='btn-group lang-switch-title' role='group'>"
                                                +"<button type='button' id='titleEN' class='btn btn-default active'>EN</button>"
                                               +" <button type='button' id='titleUA' class='btn btn-default'>UA</button>"
                                               +" <button type='button' id='titleHU' class='btn btn-default'>HU</button>"
                                               +" <button type='button' id='titleSK' class='btn btn-default'>SK</button>"
                                               +" <button type='button' id='titleRO' class='btn btn-default'>RO</button>"
                                              +"</div></div>"
						+"<div class='col-lg-12 margintop10 field'>"
                                                +"<input type='text' name='"+path+name+"-urlEN' placeholder='URL EN' class='form-control input-title-lang' lang='titleEN'>"
                                                +"<input type='text' name='"+path+name+"-urlUA' placeholder='URL UA' class='form-control input-title-lang' lang='titleUA'>"
                                                +"<input type='text' name='"+path+name+"-urlHU' placeholder='URL HU' class='form-control input-title-lang' lang='titleHU'>"
                                                +"<input type='text' name='"+path+name+"-urlSK' placeholder='URL SK' class='form-control input-title-lang' lang='titleSK'>"
                                                +"<input type='text' name='"+path+name+"-urlRO' placeholder='URL RO' class='form-control input-title-lang' lang='titleRO'>"
                                                +"<br/>"
                                                +"<input type='text' name='"+path+name+"-textEN' placeholder='Text on slide EN' class='form-control input-title-lang' lang='titleEN'>"
                                                +"<input type='text' name='"+path+name+"-textUA' placeholder='Text on slide UA' class='form-control input-title-lang' lang='titleUA'>"
                                                +"<input type='text' name='"+path+name+"-textHU' placeholder='Text on slide HU' class='form-control input-title-lang' lang='titleHU'>"
                                                +"<input type='text' name='"+path+name+"-textSK' placeholder='Text on slide SK' class='form-control input-title-lang' lang='titleSK'>"
                                                +"<input type='text' name='"+path+name+"-textRO' placeholder='Text on slide RO' class='form-control input-title-lang' lang='titleRO'>"
                                                
                                              +"</div></div>");
            
            $("#imageUpload .img-input-box", window.parent.document).remove();
            $('#imageUpload .image-upload', window.parent.document).append('<button type="button" id="dialogBtn"  class="btn btn-primary img-input-box" data-toggle="modal" data-target="#myModal">Browse image for slide</button>');
            var real = $("#real-img-path", window.parent.document).val();        
            $("#real-img-path", window.parent.document).val(real + "," + path + name);
            initGalerry();
            $("#imageUpload .img-content-show-all").removeAttr("current");
            $("#imageUpload .img-content-show-all").removeAttr("realpath");
            window.parent.imageInserted();
            }
            else {
                    var ret = "window.parent.CKEDITOR.tools.callFunction('"+"${ckeditor}"+"', \""+"${Constants.URL}"+ path + name +"\",\"\");";
                    window.opener.CKEDITOR.tools.callFunction("${num}", ""+"${Constants.URL}"+ path + name +"","");
                    window.close();
                    //return window.parent.CKEDITOR.tools.callFunction("${ckeditor}", ""+"${Constants.URL}"+ path + name +"","");
                }
                }
                else if($(this).attr("type") === "file" && "${type}" === "panorama-file") {
                $("#panorama-upload-block", window.parent.document).append("<span class='upload-success'><img src='"+"${Constants.URL}"+"img/symbol_check.png'/> Uploaded! <span class='panorama-name'>("+$(this).attr("name")+")</span> </span> <span class='remove-panorama'>Remove</span>");
                    $("#panorama-upload-block .btn-file", window.parent.document).hide();
                    $("#dialogBtnArchivePanorama", window.parent.document).hide();
                    $(".remove-panorama", window.parent.document).attr("panorama-name", path+$(this).attr("name"));
                    $(".remove-panorama", window.parent.document).attr("panorama-type", "from-archive");
                    $("#fullname-panorama", window.parent.document).val(path+$(this).attr("name"));
                    window.parent.imageInserted();
                }
            else {
                getFiles($(this).attr("name"), $(this).attr("parent"));
            }
        });
        }
        $(".arrow-left-img").click(function(){
            var path = $(".img-content-show-all").attr("current");
            var real = $(".img-content-show-all").attr("realpath");
            var spl =  path.split("/");
            var back = "";
            var spl2 =  real.split("/");
            var back2 = "";
            $.each(spl.slice(0, -2), function( index, value ) {
                back = back + value + "/";
              });
            $.each(spl2.slice(0, -2), function( index, value ) {
                back2 = back2 + value + "/";
              });
           $(".img-content-show-all").attr("current",back);
           $(".img-content-show-all").attr("realpath",back2);
           getFiles("", back, true);
        });
        $("#create-folder").click(function(){
        var name = $("#foldernametext").val();
        var path = $(".img-content-show-all").attr("current");
                jQuery.ajax({
                    url: '${Constants.URL}addFolder',
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: 'GET',
                    data: 'name='+name+'&path='+path,
                    success: function(data){
                        getFiles("", path, true);
                        $(".image-upload-folder").hide();
                        $(".image-upload-folder input").val("New Folder");
                        }
                });
        });
        function getFiles(temp_fold, parent, isFolder) {
                isFolder = isFolder || false;
                var pat = "${path_main}".replace(/\//g,",");
                $(".img-content-show-all").html("");
                jQuery.ajax({
                    url: '${Constants.URL}showImages',
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: 'GET',
                    data: 'name='+temp_fold+'&parent='+parent+'&path='+pat,
                    success: function(data){
                       $(".img-content-show-all").append(data);
                       insertImage();
                       var attr = $(".img-content-show-all").attr("current");
                        if (typeof attr === typeof undefined || attr === false) {
                            $(".img-content-show-all").attr("current",$(".galery-item img:not(.remove-icon)").attr("parent"));
                            $(".img-content-show-all").attr("realpath",$(".galery-item img:not(.remove-icon)").attr("realpath"));
                        }
                        else {

                       if(!isFolder){
                           console.log("not folder");
                            $(".img-content-show-all").attr("current",$(".img-content-show-all").attr("current")+temp_fold+"/");
                            $(".img-content-show-all").attr("realpath",$(".img-content-show-all").attr("realpath")+temp_fold+"/");
                        }
                        }
                        $(".arrow-left-img").show();
                       if($(".img-content-show-all").attr("realpath") === "img/content/"){
                           $(".arrow-left-img").hide();
                       }
                       $(".img-breadcrumps").remove();
                       $("<span class='img-breadcrumps'>"+$(".img-content-show-all").attr("realpath").replace(/\//g," > ")+"</span>").insertBefore(".img-content-show-all");
            initRemoveFile();            
            }
                });
        }
        function initRemoveFile(){
        $(".img-content-show-all img.remove-icon").click(function(){
            var name = $(this).next("img").attr("name");
            var path = $(".img-content-show-all").attr("current");
                jQuery.ajax({
                    url: '${Constants.URL}removeFileOrDir',
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: 'GET',
                    data: 'name='+name+'&path='+path,
                    success: function(data){
                        console.log(data);
                        getFiles("", path, true);
                        }
                });
        });
        }
        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }
    </script>  
    
</html>
