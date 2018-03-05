# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calendly/version'

Gem::Specification.new do |spec|
  spec.name          = "calendly"
  spec.version       = Calendly::VERSION
  spec.authors       = ["Brian Rusel Davis"]
  spec.email         = ["brian@nurdymuny.com"]

  spec.summary       = %q{Calendly APi webhook and invites}
  spec.description   = %q{connect ruby to Calendly APi}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
