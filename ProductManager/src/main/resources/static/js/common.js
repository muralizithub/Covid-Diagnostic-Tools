function goHome(){
	window.location.href = "predictiveMgmt.jsp"
}

function onLoad(){
	$(".mi").on("click", function(){
   $(".nav").find(".active").removeClass("active");
   $(this).addClass("active");
});
	
}