
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_gazer/version"

Gem::Specification.new do |spec|
  spec.name          = "str_gazer"
  spec.version       = StrGazer::VERSION
  spec.authors       = ["isaac bustos"]
  spec.email         = ["isaac.youthboard@futureindesign.org"]

  spec.summary       = "The perfect gem ti use and stare into the void of nothingnes with"
  spec.description   = "It's like punk code"
  spec.homepage      = "git push -u origin master"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

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
