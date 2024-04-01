# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kubernetes-deploy/version'

Gem::Specification.new do |spec|
  spec.name          = "kubernetes-deploy"
  spec.version       = KubernetesDeploy::VERSION
  spec.authors       = ["Katrina Verey", "Kir Shatrov"]
  spec.email         = ["ops-accounts+shipit@shopify.com"]

  spec.summary       = 'Kubernetes deploy scripts'
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/Shopify/kubernetes-deploy"
  spec.license       = "MIT"

  spec.files         = %x(git ls-files -z).split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib)

  spec.required_ruby_version = '>= 3.2.2'
  spec.add_runtime_dependency("activesupport", "~> 7.1.3")
  spec.add_runtime_dependency("kubeclient", "~> 4.11")
  spec.add_runtime_dependency("googleauth", "~> 1.8.1")
  spec.add_runtime_dependency("ejson", "~> 1.0")
  spec.add_runtime_dependency("colorize", "~> 1.1.0")
  spec.add_runtime_dependency("statsd-instrument", '~> 2.3', '>= 2.3.2')
  spec.add_runtime_dependency("oj", "~> 3.0")
  spec.add_runtime_dependency("concurrent-ruby", "~> 1.1")
  spec.add_runtime_dependency("jsonpath", "~> 1.0")
  spec.add_runtime_dependency("thor", "~>  0.20.3")

  spec.add_development_dependency("bundler", "~> 2.4.0")
  spec.add_development_dependency("rake", "~> 12.3.3")
  spec.add_development_dependency("minitest", "~> 5.0")
  spec.add_development_dependency("minitest-stub-const", "~> 0.6")
  spec.add_development_dependency("webmock", "~> 3.0")
  spec.add_development_dependency("mocha", "~> 1.5")
end
