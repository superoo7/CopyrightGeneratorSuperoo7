# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "copyright_generator_superoo7/version"

Gem::Specification.new do |spec|
  spec.name          = "copyright_generator_superoo7"
  spec.version       = CopyrightGeneratorSuperoo7::VERSION
  spec.authors       = ["Lai Weng Han"]
  spec.email         = ["jlwhoo7@gmail.com"]

  spec.summary       = %q{This is a simple gem for personal use}
  spec.description   = %q{Provides generated HTML data for rails app}
  spec.homepage      = "https://github.com/superoo7"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
