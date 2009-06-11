namespace :js do
	task :sprocketize do
		Dir.chdir(File.join(File.dirname(__FILE__), "js"))
		system("/usr/bin/sprocketize main.js | jsmin > master.min.js")
	end
end