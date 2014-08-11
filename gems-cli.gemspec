# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','gems-cli','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'gems-cli'
  s.version = GemsCli::VERSION
  s.author = 'Chase Southard'
  s.email = 'chase.southard@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Extends gems with a command line interface'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','gems-cli.rdoc']
  s.rdoc_options << '--title' << 'gems-cli' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'gcli'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')

  s.add_runtime_dependency('gli','2.12.0')
  s.add_runtime_dependency('gems','0.8.3')
  s.add_runtime_dependency('highline', '1.6.21')
  s.add_runtime_dependency('will_paginate', '3.0.7')
  s.add_runtime_dependency('clipboard', '1.0.5')
end
