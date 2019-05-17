
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sk_progress_bar/version"

Gem::Specification.new do |spec|
  spec.name          = "sk_progress_bar"
  spec.version       = SkProgressBar::VERSION
  spec.authors       = ["andriy.kondzolko"]
  spec.email         = ["kondzolko@gmail.com"]

  spec.summary       = %q{Progress bar for Sidekiq Workers}
  spec.description   = %q{Gem 'Sidekiq-progress-bar' will help to show the current stage in the work of a Sidekiq worker in the form of a progress bar!}
  spec.homepage      = "https://github.com/Kondzolko/sk_progress_bar"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Kondzolko/sk_progress_bar"
    spec.metadata["changelog_uri"] = "https://github.com/Kondzolko/sk_progress_bar"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
