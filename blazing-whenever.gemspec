# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "blazing-whenever/version"

Gem::Specification.new do |s|
  s.name        = "blazing-whenever"
  s.version     = Blazing::Whenever::VERSION
  s.authors     = ["Daniel Farrell"]
  s.email       = ["danielfarrell76@gmail.com"]
  s.homepage    = "https://github.com/danielfarrell/blazing-whenever"
  s.summary     = %q{blazing recipes for updating crontab with whenever}
  s.description = %q{blazing recipes for updating crontab with whenever}

  s.rubyforge_project = "blazing-whenever"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "blazing", '>= 0.3.0'
  s.add_dependency "whenever"
end
