# Agradio

www.agqr.jp recorder

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'agradio', github: 'kateinoigakukun/agradio-ruby'
```

And then execute:

    $ bundle

## Usage

```ruby
require 'adradio'

# AGRadio::Recorder.record <duration(s)>, <output path>
AGRadio::Recorder.record 600, 'output.mp3'
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

