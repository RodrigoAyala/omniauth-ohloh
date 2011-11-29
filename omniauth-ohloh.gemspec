# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-ohloh/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-ohloh"
  s.version     = Omniauth::Ohloh::VERSION
  s.authors     = ["Rodrigo Ayala"]
  s.email       = ["rayalac@yahoo.com"]
  s.homepage    = "https://github.com/RodrigoAyala/omniauth-ohloh"
  s.summary     = %q{Ohloh strategy for OmniAuth}


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency 'omniauth-oauth2'

  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rake'

end
