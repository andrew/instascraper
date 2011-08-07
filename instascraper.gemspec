# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "instascraper/version"

Gem::Specification.new do |s|
  s.name        = "instascraper"
  s.version     = Instascraper::VERSION
  s.authors     = ["Andrew Nesbitt"]
  s.email       = ["andrewnez@gmail.com"]
  s.homepage    = "http://github.com/andrew/instascraper"
  s.summary     = "Basic, free bookmarks api for instapaper"
  s.description = "A scraper for instapaper to provide a basic api without hacing to pay per month"

  s.rubyforge_project = "instascraper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'mechanize'
end
