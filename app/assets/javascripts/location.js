$(document).ready(function(){

	$(".country").on('change', function(){
	    var text = $( "option:selected", this ).text();
	    console.log( text );
	})
});

