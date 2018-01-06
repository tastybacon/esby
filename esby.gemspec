
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "esby/version"

Gem::Specification.new do |spec|
  spec.name          = "esby"
  spec.version       = Esby::VERSION
  spec.authors       = ["tastybacon"]
  spec.email         = ["tastycuredpork@gmail.com"]

  spec.summary       = %q{Simple elasticsearch client for ruby.}
  spec.description   = %q{Simple elasticsearch client for ruby.}
  spec.homepage      = "https://github.com/tastybacon/esby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
