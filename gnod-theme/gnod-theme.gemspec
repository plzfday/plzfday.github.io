# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "gnod-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Dongyeon Park"]
  spec.email         = ["26868715+plzfday@users.noreply.github.com"]

  spec.summary       = "A minimal Jekyll theme for the Gnod blog."
  spec.homepage      = "https://github.com/plzfday/plzfday.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.10"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
