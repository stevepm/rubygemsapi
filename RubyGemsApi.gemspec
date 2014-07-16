# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'RubyGemsApi/version'

Gem::Specification.new do |spec|
  spec.name          = "RubyGemsApi"
  spec.version       = RubyGemsApi::VERSION
  spec.authors       = ["stevepm"]
  spec.email         = ["steven.magelowitz@gmail.com"]
  spec.summary       = %q{Easy access to the RubyGems API through a convenient ruby interface}
  spec.description   = %q{Easy access to the RubyGems API through a convenient ruby interface}
  spec.homepage      = "https://github.com/stevepm/rubygemsapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "jazz_hands"
  spec.add_development_dependency "faraday"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
