# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','gems-cli','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'gems-cli'
  s.version = GemsCli::VERSION
  s.authors = ['Chase Southard']
  s.email = 'chase.southard@gmail.com'
  s.homepage = 'https://github.com/chaserx/gems-cli'
  s.platform = Gem::Platform::RUBY
  s.summary = <<-END.gsub(/^ {14}/, '')
              Search rubygems.org from the command line.
              Copy formatted gem details for your Gemfile.
              END
  s.description = <<-END.gsub(/^ {18}/, '')
                  Search rubygems.org from the command line.
                  Then you can copy formatted gem details for your Gemfile.
                  END
  s.license = 'MIT'
  s.files = `git ls-files`.split(' ')
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'gems'
  s.required_ruby_version = '>= 2.1.9'
  s.post_install_message = "Thanks for installing! \ngems-cli usage: `gems s chase`"

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 11.1', '>= 11.1.2'
  s.add_development_dependency 'rspec', '~> 3.4' # '>= 3.4.0' would be redundant
  s.add_development_dependency 'yard', '~> 0.8', '>= 0.8.7.6'
  s.add_development_dependency 'simplecov', '~> 0.11', '>= 0.11.2'
  s.add_development_dependency 'rubocop', '~> 0.40.0'

  s.add_runtime_dependency 'gli', '~> 2.14', '>= 2.14.0'
  s.add_runtime_dependency 'gems', '~> 0.8', '>= 0.8.3'
  s.add_runtime_dependency 'highline', '~> 1.7', '>= 1.7.8'
  s.add_runtime_dependency 'clipboard', '~> 1.1', '>= 1.1.0'
  s.add_runtime_dependency 'rainbow', '~> 2.1', '>= 2.1.0'
  s.add_runtime_dependency 'will_paginate', '~> 3.1', '>= 3.1.0'
end
