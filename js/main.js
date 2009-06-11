// Premailer Plus: Main Javascript Biz Logic File

// Sprockets requires:
//= require "jquery"
//= require "jquery.nospam.min"
//= require "jquery.scrollTo"
//= require "jquery.localscroll"
//= require "jquery.timeago"
//= require "jquery.github-voice"
//= require "jsonp_callbacks"

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