//= require "jquery"
//= require "jquery.github-voice"

$(document).ready(function() {
	$("#github_voice a").githubVoice('mikedamage', 'premailer-plus', {
		text: {
			description: "We need your input so we can make Premailer Plus rock that much harder. Please use the forum to tell us about your ideas!",
			loading: "Loading feedback ideas..."
		}
	})
});