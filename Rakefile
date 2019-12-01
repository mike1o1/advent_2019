require "rake/testtask"

Rake::TestTask.new do |t|
  t.test_files = FileList["test/**/*.rb"]
end
desc "Run tests"

task :main do
  ruby "main.rb"
end

task default: :test
