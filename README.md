# DivergenceMeter

[![Gem Version](https://badge.fury.io/rb/divergence_meter.svg)](http://badge.fury.io/rb/divergence_meter)
[![Build Status](https://travis-ci.org/sugamasao/divergence_meter.svg)](https://travis-ci.org/sugamasao/divergence_meter)
[![Code Climate](https://codeclimate.com/github/sugamasao/divergence_meter/badges/gpa.svg)](https://codeclimate.com/github/sugamasao/divergence_meter)
[![Test Coverage](https://codeclimate.com/github/sugamasao/divergence_meter/badges/coverage.svg)](https://codeclimate.com/github/sugamasao/divergence_meter)
[![Inline docs](http://inch-ci.org/github/sugamasao/divergence_meter.svg?branch=master)](http://inch-ci.org/github/sugamasao/divergence_meter)

DivergenceMeter is Levenshtein distance(レーベンシュタイン距離) tool and Library.

algorithm : http://ja.wikipedia.org/wiki/%E3%83%AC%E3%83%BC%E3%83%99%E3%83%B3%E3%82%B7%E3%83%A5%E3%82%BF%E3%82%A4%E3%83%B3%E8%B7%9D%E9%9B%A2

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

`retare` is typo. `tire retire hoge` is dictionary words.

```sh
$ divergence_meter retare tire retire hoge
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

`retare` is typo. `tire retire hoge` is dictionary words.

```ruby
require 'divergence_meter'

puts DivergenceMeter.did_you_mean('retare', %w(tire  retire hoge))
# => retire
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/divergence_meter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
