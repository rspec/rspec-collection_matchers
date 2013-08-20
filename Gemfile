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

# for optional rails support
gem 'activesupport', RUBY_VERSION < "1.9.3" ? '~> 3.0' : '>= 3.0'

platform :rbx do
  gem 'rubysl'
end

eval File.read('Gemfile-custom') if File.exist?('Gemfile-custom')
