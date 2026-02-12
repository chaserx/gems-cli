# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__), "lib", "gems-cli", "version.rb"])
Gem::Specification.new do |s|
  s.name = "gems-cli"
  s.version = GemsCli::VERSION
  s.authors = ["Chase Southard"]
  s.email = "chase.southard@gmail.com"
  s.homepage = "https://github.com/chaserx/gems-cli"
  s.platform = Gem::Platform::RUBY
  s.summary = <<~HEREDOC
    Search rubygems.org from the command line.
    Copy formatted gem details for your Gemfile.
  HEREDOC
  s.description = <<~HEREDOC
    Search rubygems.org from the command line.
    Then you can copy formatted gem details for your Gemfile.
  HEREDOC
  s.license = "MIT"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/chaserx/gems-cli"
  gemspec = File.basename(__FILE__)
  s.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[Gemfile .gitignore .rspec spec/ .github/ .standard.yml .rubocop.yml mise.toml])
    end
  end
  s.require_paths << "lib"
  s.bindir = "bin"
  s.executables << "gems"
  s.required_ruby_version = ">= 3.2.10"
  s.post_install_message = "Thanks for installing! \ngems-cli usage: `gems s chase`"

  s.add_development_dependency "bundler", ">= 2.0"
  s.add_development_dependency "rake", ">= 13.0"
  s.add_development_dependency "rspec", "~> 3.8"
  s.add_development_dependency "yard", "~> 0.9"
  s.add_development_dependency "simplecov", "~> 0.21"
  s.add_development_dependency "standard", ">=1.31.0"
  s.add_development_dependency "gem-release", ">= 2.0"
  s.add_development_dependency "github_changelog_generator", "~> 1.16"

  s.add_runtime_dependency "gli", "~> 2.14", ">= 2.14.0"
  s.add_runtime_dependency "gems", ">= 0.8.3", "< 2.0"
  s.add_runtime_dependency "highline", ">= 1.7.8", "< 4.0"
  s.add_runtime_dependency "clipboard", "~> 1.1", ">= 1.1.0"
  s.add_runtime_dependency "rainbow", ">= 2.1.0", "< 4.0"
  s.add_runtime_dependency "will_paginate", ">= 3.1", "< 5.0"
end
