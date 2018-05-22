# PUBG-Ruby

API wrapper for the official [PUBG API](https://developer.playbattlegrounds.com/)

_Currently in active development. Gem could be wildly unstable_

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pubg-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pubg-ruby

## Getting Started

### Setup

```ruby
require 'pubg'

client = PUBG::Client.new(access_token: '123.456789', region: 'xbox-na')
```

### Usage

```ruby
# Find Single Match
client.match('967f6581-31e2-4402-9661-8f020c68d87b')

# Find player by ID
client.player('account.6782798d64c64886a80dda0c4b22fc2a')

# Search players by name
client.players('user1,user2')

# Search players by ID
client.players('account.6782798d64c64886a80dda0c4b22fc2a,befd8e5b2f9d4b438ae83126bfd5de61')

# Match telemetry
client.telemetry('https://telemetry-cdn.playbattlegrounds.com/bluehole-pubg/xbox-na/2018/05/18/09/27/b6cb61e0-5a7d-11e8-a5e4-0a58647ff40d-telemetry.json')

# List seasons
client.seasons

# API status
client.status
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marceloalves/pubg-ruby.

Some areas that need improvement:

* Tests
* Clean up response json (camel_case keys, remove unnecessary info)
* Include [PUBG Assets](https://github.com/pubg/api-assets)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
