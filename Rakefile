# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Wikicollab::Application.load_tasks

 require 'rake/testtask'

    Rake::TestTask.new do |t|
      t.libs = ["lib"]
      t.warning = true
      t.verbose = true
      t.test_files = FileList['spec/*_spec.rb']
    end
  




