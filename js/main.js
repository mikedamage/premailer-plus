// Premailer Plus: Main Javascript Biz Logic File

// Sprockets requires:
//= require "jquery"
//= require "jquery.nospam"
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
	
	// Get Developer Twitter mentions
	$.ajax({
		type: "GET",
		dataType: "jsonp",
		url: "http://pipes.yahoo.com/mikedamage/pmplus_twitter?run&_render=json&_callback=developerFeed",
		jsonp: "developerFeed"
	});
	
	// Get Everyone Else's Twitter Mentions
	$.ajax({
		type: "GET",
		dataType: "jsonp",
		url: "http://pipes.yahoo.com/mikedamage/twitter_public?run&filterstring=premailer-plus&_render=json&_callback=twitterFeed",
		jsonp: "twitterFeed"
	});
	
	// LocalScroll Page Navigation
	$.localScroll({ duration: 500 });
	
	// De-obfuscate email addresses
	$("a.email").nospam({
		replaceText: true
	});
	
	// Github Voice link
	$("a.feedback").githubVoice('mikedamage', 'premailer-plus');
	
	// Add icons to all external links
	$("a[href^='http://']:not(.download)").css({
		background: "url(images/icons/application_add.png) top right no-repeat",
		paddingRight: "20px",
		height: "16px"
	}).attr({
		title: "Opens in a new window/tab",
		target: "_blank"
	});
	
	// Navigation List Animation
	/*$("#nav li").hover(function() {
		$(this).animate({paddingLeft: "30px"}, 300);
	}, function() {
		$(this).animate({paddingLeft: "20px"}, 300);
	});*/
	
	// Download Tooltips
	$("#downloads li").hover(function() {
		$(this).find("div.tooltip").fadeIn(300);
	}, function() {
		$(this).find("div.tooltip").fadeOut(300);
	});
});
