# DivergenceMeter

[![Gem Version](https://badge.fury.io/rb/divergence_meter.svg)](http://badge.fury.io/rb/divergence_meter)
[![Build Status](https://travis-ci.org/sugamasao/divergence_meter.svg)](https://travis-ci.org/sugamasao/divergence_meter)
[![Code Climate](https://codeclimate.com/github/sugamasao/divergence_meter/badges/gpa.svg)](https://codeclimate.com/github/sugamasao/divergence_meter)
[![Test Coverage](https://codeclimate.com/github/sugamasao/divergence_meter/badges/coverage.svg)](https://codeclimate.com/github/sugamasao/divergence_meter)
[![Inline docs](http://inch-ci.org/github/sugamasao/divergence_meter.svg?branch=master)](http://inch-ci.org/github/sugamasao/divergence_meter)

DivergenceMeter is Levenshtein distance tool and Library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'divergence_meter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install divergence_meter

## Usage

### use command line.

calculate Levenshtein distance.

```sh
$ divergence_meter retire tire
2
$ divergence_meter retire retare
1
$ divergence_meter retire hoge
5
```

did you mean?

```sh
$ divergence_meter retire tire retare hoge
retare
```

### use library

calculate Levenshtein distance.

```ruby
require 'divergence_meter'

puts DivergenceMeter.distance('retire', 'tire')
# => 2
```

did you mean?

```ruby
require 'divergence_meter'

puts DivergenceMeter.did_you_mean('retire', %w(tire retare hoge))
# => retare
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/divergence_meter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
