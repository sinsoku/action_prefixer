# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'action_prefixer/version'

Gem::Specification.new do |spec|
  spec.name          = 'action_prefixer'
  spec.version       = ActionPrefixer::VERSION
  spec.authors       = ['sinsoku']
  spec.email         = ['sinsoku.listy@gmail.com']
  spec.summary       = "Let's use with partial files"
  spec.description   = 'It appends a path to searching partial views'
  spec.homepage      = 'https://github.com/sinsoku/action_prefixer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'rubocop'
end
