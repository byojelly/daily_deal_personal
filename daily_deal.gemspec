# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "daily_deal/version"

Gem::Specification.new do |spec|
  spec.name          = "daily_deal"
  spec.version       = DailyDeal::VERSION
  spec.authors       = ["BYOJELLY"]
  spec.email         = ["<github email address>"]

#had to update the below summary and description with quoted content
  spec.summary       = "Short summary"
  spec.description   = "Short description"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  #based on code along the specific version of the rspec was not there so commented out
  spec.add_development_dependency "rspec"#, "~> 3.0"
  #below was added during code along
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

end
