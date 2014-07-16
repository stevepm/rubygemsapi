# RubyGemsApi
[![Code Climate](https://codeclimate.com/github/stevepm/rubygemsapi.png)](https://codeclimate.com/github/stevepm/rubygemsapi)
[![Coverage Status](https://coveralls.io/repos/stevepm/rubygemsapi/badge.png?branch=master)](https://coveralls.io/r/stevepm/rubygemsapi?branch=master)
[![Build Status](https://travis-ci.org/stevepm/rubygemsapi.svg?branch=master)](https://travis-ci.org/stevepm/rubygemsapi)

Easy access to the RubyGems API through a convenient ruby interface

## Installation

Add this line to your application's Gemfile:

    gem 'RubyGemsApi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install RubyGemsApi

## Usage
* Pass a valid gem name (must be the same as on RubyGems.org) to a new instance of `RubyGems`

  ```ruby
  faraday = RubyGems.new("faraday")
  faraday.name // 'faraday'
  faraday.version // '0.9.0'
  ```

## Contributing

1. Fork it ( https://github.com/stevepm/RubyGemsApi/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
