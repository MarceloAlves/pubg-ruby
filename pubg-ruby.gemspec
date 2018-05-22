
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pubg/version'

Gem::Specification.new do |spec|
  spec.name          = 'pubg-ruby'
  spec.version       = PUBG::VERSION
  spec.authors       = ['Marcelo Alves']
  spec.email         = ['selfmadecelo@gmail.com']

  spec.summary       = 'Ruby wrapper of the PUBG API.'
  spec.description   = 'Ruby wrapper of the PUBG API.'
  spec.homepage      = 'https://github.com/marceloalves/pubg-ruby'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'sawyer', '~> 0.8'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.7'
end
