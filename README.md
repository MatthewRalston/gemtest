[![Build Status](https://travis-ci.org/MatthewRalston/gemtest.png?branch=master)](https://travis-ci.org/MatthewRalston/gemtest) 

[![Gem Version](https://badge.fury.io/rb/gemtest.png)](http://badge.fury.io/rb/gemtest)

[![Coverage Status](https://coveralls.io/repos/MatthewRalston/gemtest/badge.png)](https://coveralls.io/r/MatthewRalston/gemtest)

# Gemtest

TODO: Write a gem description

# Boilerplate
```
bundle gem mygem
```

* rspec, guard

```ruby
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "guard", "~> 2.12"
  spec.add_development_dependency "coveralls", "~> 7.10"
```

* Rakefile

```ruby
require 'rspec/core/rake_task'
# Default directory to look in is `/specs`
# Run with `rake spec`
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'nested']
end

task :default => :spec
```

* Specs

```ruby
# mygem_spec.rb
require 'spec_helper'

describe MYGEM do
	it 'does something' do
		something cool
	end
end
```

```ruby
# spec_helper.rb
require 'coveralls'
Coveralls.wear!

require 'mygem'
```
* Guard

```ruby
# Guardfile
guard 'rspec' do
  # watch /lib/ files
  watch(%r{^lib/(.+).rb$}) do |m|
    "spec/#{m[1]}_spec.rb"
  end

  # watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
end
```

* Travis

```
# .travis.yml
language: ruby
cache: bundler

rvm:
  - jruby
  - 2.0.0

script: 'bundle exec rake'

notifications:
  email:
    recipients:
      - my@email.com
    on_failure: change
    on_success: never
```

* Coveralls

```
# .coveralls.yml
service_name: travis-ci

```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gemtest'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gemtest

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gemtest/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
