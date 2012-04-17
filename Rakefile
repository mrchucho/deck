require 'rake'
require 'rubygems'
require 'rubygems/package_task'

desc "Default: package"
task :default => :package do
end

eval("$specification = begin; #{IO.read('deck.gemspec')}; end")
Gem::PackageTask.new($specification) do |package|
  package.need_zip = true
  package.need_tar = true
end


