# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-jasper2"
  spec.version       = "0.1.0"
  spec.authors       = ["jekyller"]
  spec.email         = [""]

  spec.summary       = "This is a full-featured port of Ghost's default theme Casper v2.1.9 for Jekyll / GitHub Pages."
  spec.homepage      = "https://github.com/karrirasinmaki/jasper2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.7.4"
  spec.add_runtime_dependency "github-pages", "~> 192"
  spec.add_runtime_dependency "slugify", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3.1"
end
