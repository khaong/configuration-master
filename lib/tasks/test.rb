namespace :test do
  desc "check puppet manifest syntax"
  task :puppet_syntax do
    sh "find . -name *.pp | xargs puppet parser validate"
    puts "puppet syntax check ok"
  end

  namespace :openmrs do
    desc "check that OpenMRS is running"
    task :health_check do
      puts "placeholder until we have some smoke tests"
    end
  end

  namespace :build_tools do
    require 'rspec/core/rake_task'
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = "spec/build_tools/**/*_spec.rb"
    end
  end

end
