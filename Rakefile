require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')

# If you want to make this the default task
task :default => :spec

task :build do
  system "gem build prescreen.gemspec"
end
 
# task :release => :build do
#   system "gem push prescreen-#{Prescreen::VERSION}"
# end