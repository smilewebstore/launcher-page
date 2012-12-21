<!-- Fade in/out script -->
	//Fade: facebook button
	$(document).ready(function(){
		$(".faded_fb").fadeTo("fast", 0); //img opacity at page load
		$(".clicker_fb").hover(function(){
			$(".faded_fb").fadeTo("fast", 1.0); //set opacity to 100% on mouseover
				},function(){
					$(".faded_fb").fadeTo("fast", 0); // return opacity to default at mouseout
				});
	});
	//Fade: Twitter button
	$(document).ready(function(){
		$(".faded_tt").fadeTo("fast", 0); //img opacity at page load
		$(".clicker_tt").hover(function(){
			$(".faded_tt").fadeTo("fast", 1.0); //set opacity to 100% on mouseover
				},function(){
					$(".faded_tt").fadeTo("fast", 0); // return opacity to default at mouseout
				});
	});
