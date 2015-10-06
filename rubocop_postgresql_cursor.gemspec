# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop-postgresql_cursor/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop-postgresql_cursor"
  spec.version       = RubocopPostgresqlCursor::VERSION
  spec.authors       = ["tijmen"]
  spec.email         = ["tijmen@gmail.com"]
  spec.summary       = %q{Enforce usage of each_instance over find_each.}
  spec.description   = %q{Enforce usage of the postgresql_cursor gem in Rails
                          projects. }
  spec.homepage      = "https://github.com/tijmenb/rubocop-postgresql_cursor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rubocop', '~> 0.24'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
