# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "luka/version"

Gem::Specification.new do |s|
  s.name        = "luka"
  s.version     = Luka::VERSION
  s.authors     = ["Sathya Sekaran"]
  s.email       = ["sfsekaran@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Luka: The duplicitous, silver-tongued proxy.}
  s.description = %q{Luka is a simple proxy that gives you a fluent interface layer on top of any object.}

  s.rubyforge_project = "luka"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  # s.add_runtime_dependency "rest-client"
end
