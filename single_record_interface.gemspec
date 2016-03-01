$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'single_record_interface/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'single_record_interface'
  s.version     = SingleRecordInterface::VERSION
  s.authors     = ['Sergey Novikov']
  s.email       = ['novikov359@gmail.com']
  s.homepage    = 'https://github.com/droptheplot/single_record_interface'
  s.summary     = 'Single Record Interface'
  s.license     = 'MIT'

  s.files = Dir["{lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'rails', '>= 4.2.5', '< 5.0'
  s.add_development_dependency 'rspec-activemodel-mocks'
end
