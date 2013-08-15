# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cinch/plugins/logsearch/version'

Gem::Specification.new do |gem|
  gem.name          = "cinch-logsearch"
  gem.version       = Cinch::Plugins::LogSearch::VERSION
  gem.authors       = ["Brian Haberer"]
  gem.email         = ["bhaberer@gmail.com"]
  gem.description   = %q{Cinch Plugin to search log files for users.}
  gem.summary       = %q{Cinch Plugin for searching irc logs.}
  gem.homepage      = "https://github.com/bhaberer/cinch-logsearch"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency 'cinch-test'

  gem.add_dependency 'cinch',     '~> 2.0.0'
end
