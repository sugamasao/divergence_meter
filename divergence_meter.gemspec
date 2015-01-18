# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'divergence_meter/version'

Gem::Specification.new do |spec|
  spec.name          = 'divergence_meter'
  spec.version       = DivergenceMeter::VERSION
  spec.authors       = ['sugamasao']
  spec.email         = ['sugamasao@gmail.com']
  spec.summary       = 'Levenshtein distance tool and Library.'
  spec.description   = 'Levenshtein distance tool and Library. provide Levenshtein distance and did you mean keyword.'
  spec.homepage      = 'https://github.com/sugamasao/divergence_meter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'simplecov', '~> 0.9'
  spec.add_development_dependency 'rubocop', '~> 0.27'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'github_changelog_generator'
end
