# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "closest_fibonacci"
  gem.homepage = "http://github.com/Casen/closest_fibonacci"
  gem.license = "MIT"
  gem.summary = %Q{A simple gem which finds the largest integer in the Fibonacci sequence which is less than the one given.}
  gem.description = %Q{A simple gem which finds the largest integer in the Fibonacci sequence which is less than the one given.
  Example:

  145.closest_fibonacci => 144
  142.closest_fibonacci => 89}
  gem.email = "cdubd10@gmail.com"
  gem.authors = ["Casen"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : "1.0"

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "closest_fibonacci #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
