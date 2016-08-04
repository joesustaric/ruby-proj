# This will load the src directory into the LOAD_PATH
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new :spec

task spec: :rubocop
task :default => :spec

desc 'Run RuboCop on the lib and spec dirs'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.patterns = ['lib/**/*.rb','spec/**/*.rb']
end
