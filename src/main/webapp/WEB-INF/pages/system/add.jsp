<%-- 
    Document   : Add
    Created on : Mar 9, 2016, 12:29:51 PM
    Author     : kiwi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<t:systempage>
    <link rel="stylesheet" href="${Constants.URL}css/plugins/ckeditor.css" type="text/css" />  
    <style>
        #ui-datepicker-div {
            z-index: 3 !important;
        }
    </style>
    <script src="${Constants.URL}js/ckeditor/ckeditor.js"></script>
    <div class="margintop20">
        <h4>Добавить статью в категорию "${cat_name}"</h4>
        <ol class="breadcrumb">
            <li class="active">
                <a href="#" data-toggle="modal" data-target="#shureModal"> <i class="fa fa-fw fa-list-alt"></i> Вернуться в категорию "${cat_name}"</a>
            </li>
        </ol>
	<form action="<c:url value="/system/do/insertdata" />" name="addArticleForm" id="addForm" method="POST" type="multipart/form-data">
            <input type="hidden" class="form-control" name="category" value="${category}">
            <input type="hidden" name="dir" id="dir-name" value="${folder}" />
            <input type="hidden" name="gallery-items" id="gallery-items-input" />
            <div class="row add-row">
                <div class="col-lg-12 margintop30 field">
                    <label for="tlt">Заголовок <span class="red-star">*</span></label>
                    <br/>
                    <div class="btn-group lang-switch-title" role="group" aria-label="...">
                        <button type="button" id="titleRU" class="btn btn-default active">Русский</button>
                        <button type="button" id="titleEN" class="btn btn-default">Английский</button>
                    </div>
                </div>
                <div class="col-lg-6 margintop10 field titles">
                    <input type="text" name="titleRU" class="form-control input-title-lang" lang="titleRU" id="tltRU"  maxlength="55">
                    <input type="text" name="titleEN" class="form-control input-title-lang" lang="titleEN" id="tltEN"  maxlength="55">
                    <div class="validation"></div>
                </div>
            </div>
            <hr>
            <c:if test="${category != '0'}">
                
            <div class="row add-row">
                <div class="col-lg-3 field">
                    <div class="form-group">
                        <label for="datepicker">Дата: от<span class="red-star">*</span></label>
                        <input type="text" class="form-control" name="date" id="datepicker">
                    </div>                  
                </div>
                    <div class="col-lg-3 field">
                        <div class="form-group">
                            <label for="datepicker-act">Дата: до</label>
                            <input type="text" class="form-control" name="act-date" id="datepicker-act">
                        </div>
                    </div>  
            </div>
            <hr>
            </c:if>
            <div class="row add-row img-upl">
                <div class="col-lg-12 field">
                    <label for="img">Галерея</label>
                            <div class="img-content">
                                <div class="image-upload">
                                    
                                    <span class="btn btn-primary btn-file">
                                        Добавить изображение<input id="file-input" type="file">
                                    </span>
                                    
                                </div>   
                            </div>
                            <input type="hidden" name="avatar-path" id="avatar-path" />                 
                </div>
            </div>
            <hr>
            <div class="row add-row">
                <div class="col-lg-12 margintop30 field">
                    <label for="tlt">Текст <span class="red-star">*</span></label><br/>
                    <div class="btn-group lang-switch-text" role="group" aria-label="...">
                        <button type="button" id="textRU" class="btn btn-default active">Русский</button>
                        <button type="button" id="textEN" class="btn btn-default">Английский</button>
                    </div>
                </div>
                <div class="col-lg-12 margintop10 field textareas">
                    <div class="ck-data-box" id="CKdata"></div>
                        <div lang="textRU" class="textarea-msg"><textarea name="textRU" id="editorRU" rows="20" cols="80" class="input-block-level"></textarea></div>
                        <div lang="textEN" class="textarea-msg"><textarea name="textEN" id="editorEN" rows="20" cols="80" class="input-block-level"></textarea></div>
                        <div class="validation"></div>
                </div>
            </div>
            <hr>
        </form>
        <p>
            <button class="btn btn-success margintop30 marginbottom30 sudmitData" type="submit">Добавить</button>
            <button type="button" class="btn btn-danger btn-mini" data-toggle="modal" data-target="#shureModal">Назад</button>
        </p>
    </div>
    <div id="shureModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Back to category window</h4>
                </div>
                <div class="modal-body">
                    <p>Save changes?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success btn-mini sudmitData" type="submit" data-dismiss="modal">Сохранить изменения</button>
                    <button class="btn btn-warning btn-mini modal-btn-warning" type="submit" data-dismiss="modal">Отменить</button>
                    <a href="<c:url value="/system/index/${category}" />"><button type="button" class="btn btn-danger btn-mini">Назад в категорию</button></a>
                </div>
          </div>
        </div>
    </div>
</t:systempage>
    
<script src="${Constants.URL}js/plugins/jquery.webkitresize.js"></script>
<script src="${Constants.URL}js/plugins/jquery.mb.browser.min.js"></script>
<script> 
    $(document).ready(function () {
        var currentLang = $(".lang-switch-text button.active").attr("id");
        $(".textareas .textarea-msg[lang='"+currentLang+"']").show();
        var currentLangT = $(".lang-switch-title button.active").attr("id");
        $(".input-title-lang[lang='"+currentLangT+"']").show();
        var currentLangAT = $(".lang-switch-avatar-text button.active").attr("id");
        $(".input-avatar-text-lang[lang='"+currentLangAT+"']").show();
        var myDate = new Date();
        var currentMonth = (myDate.getMonth()+1);
        var currentDate = myDate.getDate();
        if (currentMonth < 10) { currentMonth = '0' + currentMonth; }
        if (currentDate < 10) { currentDate = '0' + currentDate; }
        var prettyDate = currentDate + '.' +currentMonth + '.' +  myDate.getFullYear();
        $( "#datepicker" ).datepicker();
        $( "#datepicker" ).datepicker("option", "dateFormat", "dd.mm.yy");
        $("#datepicker").val(prettyDate);
        $( "#datepicker-act" ).datepicker();
        $( "#datepicker-act" ).datepicker("option", "dateFormat", "dd.mm.yy");
        initCKE();
    });
    $('.img-upl').on('change', '#file-input', function() {
            
        var result = [];
        var len = $(this).get(0).files.length;
        var count = 1;
        for (var i = 0; i < $(this).get(0).files.length; ++i) {
            var data = new FormData();
        data.append('upload', $(this).get(0).files[i]);
        data.append("path", "files/gallery");
        jQuery.ajax({
                    url: '${Constants.URL}uploadFile',
                    data: data,
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: 'POST',
                    success: function(data){
                        var html_app = "<div class='gallery-item'><img class='remove-icon' src='${Constants.URL}img/remove.png' />"+data +
                    "<input type='text' name='text' placeholder='Текст на русском' class='form-control galtextRU'>"+
                    "<input type='text' name='text' placeholder='Текст на английском' class='form-control galtextEN'>"+
                                "</div>";
                        $(".img-content").append(html_app);
                        initRemove();
                    }
                });
        }   
        });
    function initRemove(){
        $(".remove-icon").click(function(){
            deleteFile($(this).parent("div").find(".main-img").attr("realpath"));
            $(this).parent("div").remove();
        });
    }
    
    $(".lang-switch-text button").click(function(){
        $(".lang-switch-text button").removeClass("active");
        $(this).addClass("active");
        var currentLang = $(this).attr("id");
        $(".textareas .textarea-msg").hide();
        $(".textareas .textarea-msg[lang='"+currentLang+"']").show();
    });
    $(".lang-switch-title button").click(function(){
        $(".lang-switch-title button").removeClass("active");
        $(this).addClass("active");
        var currentLangT = $(this).attr("id");
        $(".input-title-lang").hide();
        $(".input-title-lang[lang='"+currentLangT+"']").show();
    });
    $(".lang-switch-avatar-text button").click(function(){
        $(".lang-switch-avatar-text button").removeClass("active");
        $(this).addClass("active");
        var currentLangT = $(this).attr("id");
        $(".input-avatar-text-lang").hide();
        $(".input-avatar-text-lang[lang='"+currentLangT+"']").show();
    });
    
    
    $(".sudmitData").click(function(e){
        $("div.validation").html('');
        $("div.validation").attr("id","");
        var isValidate = true;
        if($("#tltEN").val() === "" && $("#tltRU").val() === "") {
            isValidate = false;
            $(".titles div.validation").attr("id","active-validation");
            $(".titles div.validation").html("<span style='color:red'>Title can't be empty!</span>");
            e.preventDefault(); 
            goToByScroll("active-validation");
        }
        if(isValidate) {
            
            $(".gallery-item").each(function() {
                $("#gallery-items-input").val($("#gallery-items-input").val() + 
                        "path:"+$(this).find(".main-img").attr("realpath") +
                        ",textRU:"+$(this).find(".galtextRU").val() +
                        ",textEN:"+$(this).find(".galtextEN").val() +"|");
            });
            $("#addForm").submit();
        }
    });
    function goToByScroll(id){
        id = id.replace("link", "");
        $('html,body').animate({
            scrollTop: $("#"+id).offset().top-150},
            'slow');
    }
    function deleteFile(temp){
        jQuery.ajax({
            url: '${Constants.URL}system/do/removefile',
            cache: false,
            contentType: false,
            processData: false,
            type: 'GET',
            data: 'path='+temp,
            success: function(data){
            }
        });
    }
    function imageInserted(){ 
    $("label.cke_dialog_ui_labeled_label:contains('HSpace')").next().find(".cke_dialog_ui_input_text").val("15");
    $(".cke_editor_editorEN_dialog .cke_dialog_body").removeClass("image-dialog");
    $(".cke_editor_editorRU_dialog .cke_dialog_body").removeClass("image-dialog");
    $(".cke_dialog_ui_button_ok span").click();
    }
       
    function initCKE() {
        CKEDITOR.replace('editorEN', {
            filebrowserBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserWindowWidth  : 800,
            filebrowserWindowHeight : 500
        });
        CKEDITOR.replace('editorRU', {
            filebrowserBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserWindowWidth  : 800,
            filebrowserWindowHeight : 500
        });
        CKEDITOR.on('instanceReady', function() { 
        $("#cke_editorEN iframe").webkitimageresize().webkittableresize().webkittdresize();
        $("#cke_editorRU iframe").webkitimageresize().webkittableresize().webkittdresize();
        
    $(".cke_button.cke_button__image.cke_button_off").click(function(){
        $(".cke_dialog_body").hide();
        setTimeout(function() {   //calls click event after a certain time
   
    $(".cke_editor_editorEN_dialog .cke_dialog_body").addClass("image-dialog");
    $(".cke_editor_editorRU_dialog .cke_dialog_body").addClass("image-dialog");
    
    if($(".cke_editor_editorRU_dialog .cke_dialog_body").hasClass("image-dialog")) {
        $(".cke_dialog_body").show();
    }
    if($(".cke_editor_editorEN_dialog .cke_dialog_body").hasClass("image-dialog")) {
        $(".cke_dialog_body").show();
    }
}, 500);
    } );    
    });
        var obj = $("#cke_120_fileInput").contents().find(".returnImage");
         obj.click("click", function (e) {
            $("#cke_71_textInput").val("s2as1");
        });
    }
</script>

