lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-intuit/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-intuit"
  spec.version       = OmniAuth::Intuit::VERSION
  spec.authors       = ["various"]
  spec.email         = ["job@bluth.co"]

  spec.summary       = 'OAuth2 Omniauth strategy for Intuit.'
  spec.description   = 'OAuth2 Omniauth straetgy for Intuit API.'
  spec.homepage      = 'https://github.com/CanalWestStudio/omniauth-intuit'
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth'
  spec.add_dependency 'omniauth-oauth2'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
end
