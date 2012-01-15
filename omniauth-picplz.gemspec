# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-picplz/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-picplz"
  s.version     = OmniAuth::Picplz::VERSION
  s.authors     = ["Kohei Hasegawa"]
  s.email       = ["ameutau@gmail.com"]
  s.homepage    = "https://github.com/banyan/omniauth-picplz"
  s.summary     = %q{OmniAuth strategy for Picplz}
  s.description = s.summary

  s.rubyforge_project = "omniauth-picplz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_runtime_dependency 'multi_json', '~> 1.0.4'

  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rake'
end
