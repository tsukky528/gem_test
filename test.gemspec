# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test/version'

Gem::Specification.new do |spec|
  spec.name          = "test"
  spec.version       = Test::VERSION
  spec.authors       = ["tsukky528"]
  spec.email         = ["e.tsukiyama@aktsk.jp"]
  spec.summary       = %q{test}
  spec.description   = %q{test}
  spec.extensions = ["ext/extconf.rb"]
  spec.homepage      = "https://github.com/tsukky528/gem_test"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["ext", "lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
