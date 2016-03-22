(function ($) {
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-75426458-1', 'auto');
  ga('send', 'pageview');

	new WOW().init();
	
	$(window).load(function(){
      $("#navigation").sticky({ topSpacing: 0 });
    });

	jQuery(window).load(function() { 
		jQuery("#preloader").delay(100).fadeOut("slow");
		jQuery("#load").delay(100).fadeOut("slow");
	// Trigger maximage
	jQuery('#maximage').maximage();
	});


	//jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
		$('.navbar-nav li a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
                        $(".navbar-nav li").removeClass("active");
                        $(this).parent("li").addClass("active");
		});
		$('.page-scroll a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
	});
	
	//owl carousel
	$('#owl-works').owlCarousel({
            items : 4,
            itemsDesktop : [1199,5],
            itemsDesktopSmall : [980,5],
            itemsTablet: [768,5],
            itemsTabletSmall: [550,2],
            itemsMobile : [480,2],
        });
	
	//nivo lightbox
	$('.owl-carousel .item a').nivoLightbox({
		effect: 'fadeScale',                             // The effect to use when showing the lightbox
		theme: 'default',                           // The lightbox theme to use
		keyboardNav: true,                          // Enable/Disable keyboard navigation (left/right/escape)
		clickOverlayToClose: true,                  // If false clicking the "close" button will be the only way to close the lightbox
		onInit: function(){},                       // Callback when lightbox has loaded
		beforeShowLightbox: function(){},           // Callback before the lightbox is shown
		afterShowLightbox: function(lightbox){},    // Callback after the lightbox is shown
		beforeHideLightbox: function(){},           // Callback before the lightbox is hidden
		afterHideLightbox: function(){},            // Callback after the lightbox is hidden
		onPrev: function(element){},                // Callback when the lightbox gallery goes to previous item
		onNext: function(element){},                // Callback when the lightbox gallery goes to next item
		errorMessage: 'The requested content cannot be loaded. Please try again later.' // Error message when content can't be loaded
	});
	
	
	//parallax
        if ($('.parallax').length)
        {
			$(window).stellar({
				responsive:true,
                scrollProperty: 'scroll',
                parallaxElements: false,
                horizontalScrolling: false,
                horizontalOffset: 0,
                verticalOffset: 0
            });

        }

        $("#show-contact").click(function(){
            $("#contact .heading-contact").toggle("slow");
            $("#contact .form-wrapper").toggle("slow");
        });
        $("#btnContactUs").click(function (){
            $('#mail-form input:not(#button-blue)').css("border","none");
            $('#mail-form textarea').css("border","none");
            $("#btnContactUs").prop('disabled', true);
            $(".validation").html("");
            var validation = true;
            if($("#name").val() === null || $("#name").val() === "" || $("#email").val() === null || $("#email").val() === "" || $("#message").val() === null || $("#message").val() === "") {
                validation = false;
            }
            if(!IsEmail($("#email").val())) {
                validation = false;
            }
            if(validation){
                $("#contact-form").fadeOut("fast", function() {
                    $("#mail-loading").fadeIn("fast");
                });
                var name = replaceChar($("#name").val());
                var comment = replaceChar($("#message").val());
                $.ajax({
                    type: "get",
                    url: "${Constants.URL}sendmail",
                    cache: false,    
                    data:'name='+ name +'&email='+$("#email").val()+'&text='+comment,
                    success: function(response){
                        if(response === "" || response === null){
                            $("#mail-loading").fadeOut("fast", function() {
                                $("#contact-form").fadeIn("fast");
                            });
                            $(".validation").html("При отправке возникла ошибка. Попробуйте снова позже.");
                            $("#btnContactUs").prop('disabled', false);
                        }
                        else {
                            $("#mail-loading").fadeOut("fast", function() {
                                $("#mail-complete").fadeIn("fast");
                                $("#btnContactUs").prop('disabled', false);
                                setTimeout(function() { 
                                $("#mail-complete").fadeOut("slow", function() {
                                    $("#contact-form").fadeIn("slow");
                                    $("#contact").hide();
                                });
                                }, 3000);
                            });
                        }
                    }, 
                    error: function(response){ 
                        $("#mail-loading").fadeOut("fast", function() {
                            $("#contact-form").fadeIn("fast");
                        });
                        $(".validation").html("При отправке возникла ошибка. Попробуйте снова позже.");
                        $("#btnContactUs").prop('disabled', false);
                    }
                });
            }
            else {
                $(".validation").html("Fill all fields correctly, please.");
                $("#btnContactUs").prop('disabled', false);
                $('#contact-form input:text').filter(function(){
                    return $.trim(this.value).length == 0;
                }).css("border","1px solid red");
                $('#contact-form textarea').filter(function(){
                    return $.trim($("#contact-form textarea").val()).length == 0;
                }).css("border","1px solid red");
            }
        });    
function replaceChar(inputString) {
   inputString = inputString.replace('~', '');
   inputString = inputString.replace('#', '');
   inputString = inputString.replace('^', '');
   inputString = inputString.replace('&', '');
   inputString = inputString.replace('*', '');
   inputString = inputString.replace('`', '');
   inputString = inputString.replace('\'', '');
   inputString = inputString.replace('+', '');
   return inputString;
}
function IsEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
})(jQuery);
