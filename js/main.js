$(document).ready(function() {
	
	// Get recent Github activity
	$.ajax({
		type: "GET",
		dataType: "jsonp",
		url: "http://pipes.yahoo.com/mikedamage/premailerplus?run&_render=json&_callback=gitFeed",
		jsonp: "gitFeed"
	});
	
	// Get Twitter mentions
	$.ajax({
		type: "GET",
		dataType: "jsonp",
		url: "http://pipes.yahoo.com/mikedamage/pmplus_twitter?run&_render=json&_callback=twitterFeed",
		jsonp: "twitterFeed"
	});
	
	// LocalScroll Page Navigation
	$.localScroll({ duration: 500 });
	
});