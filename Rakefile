require 'bundler'
Bundler.require

require 'opal/rspec/rake_task'
Opal::RSpec::RakeTask.new(:default) do |s|
  # if you don't do this, rspec will try to load the index.html
  # which you generally don't want
  s.append_path "app"
  s.index_path = "spec/index.html"
end

desc "build js file from opal files"
task :build do
  File.open("js/application.js", "w+") do |out|
    env = Opal::Environment.new
    env.append_path "app"
    out << env["application"].to_s
  end
end

desc "build js and open in a browser"
task :view => [:build] do
  system "open -a 'Google Chrome' index.html"
end
