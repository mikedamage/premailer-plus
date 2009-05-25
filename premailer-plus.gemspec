# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{premailer-plus}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Green", "Alex Dunae"]
	s.description = %{Premailer Plus is a re-packaged, bugfixed and improved version of Alex Dunae's Premailer gem}
  s.date = %q{2009-05-24}
  s.default_executable = %q{premailer_plus}
  s.email = %q{mike.is.green@gmail.com}
  s.executables = ["premailer_plus"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.textile"
  ]
  s.files = [
    "LICENSE",
    "README.textile",
    "Rakefile",
    "VERSION.yml",
    "bin/premailer_plus",
    "lib/html_to_plain_text.rb",
    "lib/premailer.rb",
    "test/fixtures/client_support.html",
    "test/fixtures/test-import.css",
    "test/fixtures/test-with-folding.html",
    "test/fixtures/test.css",
    "test/fixtures/test.html",
    "test/fixtures/test2.css",
    "test/fixtures/test2.html",
    "test/fixtures/test3-import.css",
    "test/fixtures/test3-noimport.css",
    "test/fixtures/test3-out.html",
    "test/fixtures/test3.css",
    "test/fixtures/test3.html",
    "test/images/content_bg.jpg",
    "test/images/inset.jpg",
    "test/speed.rb",
    "test/test_convert_to_plain_text.rb",
    "test/test_helper.rb",
    "test/test_link_resolver.rb",
    "test/test_premailer.rb",
    "test/test_premailer_download.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mikedamage/premailer-plus}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Miscellaneous improvements and fixes to Alex Dunae's Premailer gem}
  s.test_files = [
    "test/speed.rb",
    "test/test_convert_to_plain_text.rb",
    "test/test_helper.rb",
    "test/test_link_resolver.rb",
    "test/test_premailer.rb",
    "test/test_premailer_download.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
