# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "applebot/version"

Gem::Specification.new do |s|
  s.name        = "applebot"
  s.license     = "MIT"
  s.authors     = ["Clay Allsopp"]
  s.email       = "clay@usepropeller.com"
  s.homepage    = AppleBot::WEBSITE
  s.version     = AppleBot::VERSION
  s.summary     = "AppleBot"
  s.description = AppleBot::DESCRIPTION

  s.add_dependency "commander", "~> 4.1.2"
  s.add_dependency "activesupport", ">= 3.2"
  s.add_dependency "terminal-table", ">= 1.4.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "dotenv"

  s.files         = Dir["./**/*"].reject { |file| file =~ /\.\/(bin|log|pkg|script|spec|test|vendor)/ }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
