source 'https://rubygems.org'

gemspec

%w[rspec rspec-core rspec-expectations rspec-mocks].each do |lib|
  library_path = File.expand_path("../../#{lib}", __FILE__)
  if File.exist?(library_path)
    gem lib, :path => library_path
  else
    gem lib, :git    => "git://github.com/rspec/#{lib}.git",
             :branch => ENV.fetch('BRANCH',"master")
  end
end

# only the master branch is supported on rspec-support
gem "rspec-support", :git => "git://github.com/rspec/rspec-support.git"

gem "cucumber", "~> 1.1.9"
gem "aruba",    "~> 0.5"
gem "rake",     "~> 10.0.0"

version_file = File.expand_path("../.rails-version", __FILE__)
rails_gem_args = case version = ENV['RAILS_VERSION'] || (File.exist?(version_file) && File.read(version_file).chomp)
when /master/
 { :git => "git://github.com/rails/rails.git" }
when /stable$/
 { :git => "git://github.com/rails/rails.git", :branch => version }
when nil, false, ""
  if RUBY_VERSION < '1.9.3'
    # Rails 4+ requires 1.9.3+, so on earlier versions default to the last 3.x release.
     "3.2.17"
  else
    "4.0.4"
  end
else
  version
end

gem "activesupport", *rails_gem_args
gem "activemodel",   *rails_gem_args


platform :rbx do
  gem 'rubysl'
end

eval File.read('Gemfile-custom') if File.exist?('Gemfile-custom')
