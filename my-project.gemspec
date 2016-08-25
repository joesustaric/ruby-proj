lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'my_project/version'

# http://guides.rubygems.org/specification-reference/

Gem::Specification.new do |s|
  s.name          = 'my-project'
  s.version       = MyProject::VERSION
  s.summary       = 'Short one liner of what this gem does.'
  s.description   = 'A longer explanation of what this gem does'
  s.authors       = ['Person One Name', 'Person Two name']
  s.email         = ['person1email@email.com', 'person2email@email.com']
  s.files         = Dir['lib/**/*'] + Dir['bin/*'] + ['README.md'] # Plus other files needed
  s.test_files    = Dir['spec/**/*']
  s.homepage      = 'https://link.to.the.source.codez.or.homepage.com'
  s.license       = 'MIT / Apache etc. your own?..'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  # Below Add any Development and runtime dependencies
   s.add_development_dependency 'rspec', '~> 3.5.0'
   s.add_development_dependency 'rubocop', '~> 0.42.0'
   s.add_development_dependency 'pry', '~> 0.10.4'
   s.add_development_dependency 'guard-rspec', '~> 4.7.3'
   s.add_development_dependency 'rake', '~> 10.5.0'
   s.add_development_dependency 'clamp', '~> 1.0.0'
   #s.add_runtime_dependency 'something', '~> 1.0.0'
end
