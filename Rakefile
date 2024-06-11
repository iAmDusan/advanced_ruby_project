# Rakefile

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib' << 'test'
  t.pattern = 'test/test_*.rb'
end

desc 'Run all tests'
task default: :test
