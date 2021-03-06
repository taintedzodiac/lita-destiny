Gem::Specification.new do |spec|
  spec.name          = "lita-destiny"
  spec.version       = "0.0.9"
  spec.authors       = ["Rob Zimmerman"]
  spec.email         = ["taintedz@gmail.com"]
  spec.description   = "A Lita handler for the Destiny API."
  spec.summary       = "A Lita handler for the Destiny API."
  spec.homepage      = "https://www.github.com/taintedzodiac/lita-destiny"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.2"
  spec.add_runtime_dependency "destiny-ruby"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
