# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'happy_bday/version'

Gem::Specification.new do |spec|
  spec.name          = 'happy_bday'
  spec.version       = HappyBday::VERSION
  spec.authors       = ['Andrew Edson']
  spec.email         = ['docedson@gmail.com']

  spec.summary       = %(Creating my first gem.)
  spec.homepage      = 'https://github.com/docedson/happy_bday'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # `git ls-files -z` loads files into RubyGem that have been added into git.
  spec.files         = File.expand_path(Dir.chdir) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) } # rubocop:disable LineLength
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
