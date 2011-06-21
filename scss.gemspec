# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "scss/version"

Gem::Specification.new do |s|
  s.name        = "scss"
  s.version     = Scss::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Stephan Schubert"]
  s.email       = ["stephan@frozencherry.de"]
  s.homepage    = ""
  s.summary     = "A Sass-based CSS framework, library and collection of tools and fixes. Everything i ever need."
  s.description = "A Sass-based CSS framework, library and collection of tools and fixes. Everything i ever need."

  s.rubyforge_project = "scss"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
