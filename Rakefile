require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec
begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
end

desc 'generate changelog'
task :changelog do
  system 'bundle exec github_changelog_generator -f %Y/%m/%d'
end
