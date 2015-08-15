# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'terminal/table/unicode/version'

Gem::Specification.new do |spec|
  spec.name          = 'terminal-table-unicode'
  spec.version       = Terminal::Table::Unicode::VERSION
  spec.authors       = ['rochefort']
  spec.email         = ['terasawan@gmail.com']

  spec.summary       = 'Simple, feature rich ascii table generation library with full-width unicode characters'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/rochefort/terminal-table-unicode'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'terminal-table', '~> 1.5'
  spec.add_dependency 'unicode-display_width', '~> 0.1.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end