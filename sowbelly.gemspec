# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sowbelly/version'

Gem::Specification.new do |spec|
  spec.name          = "sowbelly"
  spec.version       = Sowbelly::VERSION
  spec.authors       = ["Stuart"]
  spec.email         = ["stu.zart@gmail.com"]
  spec.summary       = %q{Simple representation of backgammon board and game state.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "GPL v3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rubocop"
  
  spec.add_dependency "dicebag","~> 3.1"
end
