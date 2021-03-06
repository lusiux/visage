#
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "visage-app/version"

Gem::Specification.new do |s|
  s.name        = "visage-app"
  s.version     = Visage::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [ "Lindsay Holmwood" ]
  s.email       = [ "lindsay@holmwood.id.au" ]
  s.homepage    = "http://visage-app.com/"
  s.summary     = %q{A web (interface | service) for viewing collectd statistics.}
  s.description = %q{Visage is a web interface for viewing collectd statistics. It also provides a JSON interface onto collectd's RRD data, giving you an easy way to mash up the data.}

  s.rubyforge_project = "visage-app"

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency     "sinatra",         "= 1.4.3"
  s.add_runtime_dependency     "sinatra-contrib", "= 1.4.0"
  s.add_runtime_dependency     "haml",            ">= 0"
  s.add_runtime_dependency     "errand",          "= 0.8.0"
  s.add_runtime_dependency     "yajl-ruby",       "= 1.1.0"
  s.add_runtime_dependency     "activemodel",     "~> 3.2.12"
end
