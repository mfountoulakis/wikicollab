=begin
require'spec_helper'

desc 'Run factory specs.'
RSpec::Core::RakeTask.new(:factory_specs) do |t|
  t.pattern = './spec/factories_spec.rb'
end
 
task spec: :factory_specs
=end