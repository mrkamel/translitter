# frozen_string_literal: true

require_relative "lib/translitter/version"

Gem::Specification.new do |spec|
  spec.name = "translitter"
  spec.version = Translitter::VERSION
  spec.authors = ["Benjamin Vetter"]
  spec.email = ["vetter@flakks.com"]

  spec.summary = "Simple transliteration of special characters"
  spec.description = "Simple transliteration of special characters"
  spec.homepage = "https://github.com/mrkamel/translitter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mrkamel/translitter"
  spec.metadata["changelog_uri"] = "https://github.com/mrkamel/translitter/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "rubocop"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
