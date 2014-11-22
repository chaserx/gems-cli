# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','gems-cli','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'gems-cli'
  s.version = GemsCli::VERSION
  s.authors = ['Chase Southard']
  s.email = 'chase.southard@gmail.com'
  s.homepage = 'https://github.com/chaserx/gems-cli'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Search rubygems.org from the command line. Copy formatted gem details for your Gemfile.'
  s.description = 'Search rubygems.org from the command line. Then you can copy formatted gem details for your Gemfile.'
  s.license = 'MIT'
  s.files = `git ls-files`.split(" ")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','gems-cli.rdoc']
  s.rdoc_options << '--title' << 'gems-cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'gems'
  s.required_ruby_version = '>= 1.9'
  s.post_install_message = "Thanks for installing! \ngems-cli usage: `gems s chase`"
  s.add_development_dependency('rake', '~> 10.3.2')
  s.add_development_dependency('rdoc', '~> 4.1.2')
  s.add_development_dependency('pry-byebug', '~> 2.0.0')

  s.add_runtime_dependency('gli','2.12.2')
  s.add_runtime_dependency('gems','0.8.3')
  s.add_runtime_dependency('highline', '1.6.21')
  s.add_runtime_dependency('clipboard', '1.0.5')
  s.add_runtime_dependency('rainbow', '2.0.0')
  s.add_runtime_dependency('will_paginate', '3.0.7')
end
