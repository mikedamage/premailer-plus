// JSONP Callbacks for the Premailer Plus site
function gitFeed(json) {
	var tmp = '';
	var feed = json.value.items;
	if (feed.length > 0) {
		for (i=0; i < 3; i++) {
			var title = feed[i].title;
			var link = '<a href="' + feed[i].link + '" target="_blank">' + title + '</a>';
			tmp += "<li>\n" + link + "<br />\n" + "<em>" + jQuery.timeago(feed[i].pubDate) + "</em></li>\n\n";
		}
	} else {
		tmp = "<li>No recent Github activity.</li>";
	}
	
	jQuery("#github_activity .loading").hide('fast');
	jQuery("#github_activity ul").append(tmp);
}

function developerFeed(json) {
	var tmp = '';
	var feed = json.value.items;
	if (feed.length > 0) {
		for (i=0; i < 3; i++) {
			tmp += "<li>\n<strong>" + feed[i].user.screen_name + "</strong>" + feed[i].title + "<br/>\n<em>" + jQuery.timeago(feed[i].pubDate) + "</em>\n</li>\n\n";
		}
	} else {
		tmp = "<li>No Twitter posts yet.</li>";
	}
	
	jQuery("#developer_twitter .loading").hide('fast');
	jQuery("#developer_twitter ul").append(tmp);
}

function twitterFeed(json) {
	var tmp = '';
	var feed = json.value.items;
	if (feed.length > 0) {
		for (i=0; i < 3; i++) {
			tmp += "<li>\n<strong>" + feed[i].user.screen_name + "</strong>" + feed[i].title + "<br/>\n<em>" + jQuery.timeago(feed[i].pubDate) + "</em>\n</li>\n\n";
		}
	} else {
		tmp = "<li>No Twitter posts yet.</li>";
	}
	
	jQuery("#everyone_twitter .loading").hide('fast');
	jQuery("#everyone_twitter ul").append(tmp);
}