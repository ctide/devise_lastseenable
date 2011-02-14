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
  gem.name = "devise_lastseenable"
  gem.homepage = "http://github.com/ctide/devise_lastseenable"
  gem.license = "MIT"
  gem.summary = "This ensures that devise will update a last_seen flag on the model whenever you check if a user is authed."
  gem.description = "This ensures that devise will update a last_seen flag on the model whenever you check if a user is authed."
  gem.email = "christide@christide.com"
  gem.authors = ["ctide"]
  gem.add_runtime_dependency 'warden'
  gem.add_runtime_dependency 'devise'
  gem.add_runtime_dependency 'rails', '>= 3.0.4'
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
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "devise_lastseenable #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
