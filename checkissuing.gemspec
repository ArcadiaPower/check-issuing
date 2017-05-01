# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'checkissuing/version'

Gem::Specification.new do |spec|
  spec.name          = "checkissuing"
  spec.version       = Checkissuing::VERSION
  spec.authors       = ["Iwo Dziechciarow"]
  spec.email         = ["iiwo@o2.pl"]
  spec.summary       = %q{Simple wrapper for Checkissuing.com }
  spec.description   = %q{Simple wrapper for Checkissuing.com (work in progress) }
  spec.homepage      = "https://github.com/ArcadiaPower/checkissuing"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'httparty', '~> 0.14'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 12.0'
end
