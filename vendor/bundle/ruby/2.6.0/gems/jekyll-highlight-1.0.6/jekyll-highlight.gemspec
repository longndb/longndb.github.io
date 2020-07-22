# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-highlight/version"

Gem::Specification.new do |spec|
  spec.name                  = "jekyll-highlight"
  spec.version               = Jekyll::Highlight::VERSION
  spec.authors               = ["Torgny Bjers"]
  spec.email                 = ["torgny.bjers@gmail.com"]

  spec.summary               = "Jekyll syntax highlighter"
  spec.description           = "Syntax highlighter for code and text."
  spec.homepage              = "https://github.com/tbjers/jekyll-highlight-plugin"
  spec.license               = "MIT"
  spec.required_ruby_version = ">= 2.0.0"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.47.1"
  spec.add_development_dependency "byebug", "~> 0" if RUBY_VERSION >= "2.0"
end
