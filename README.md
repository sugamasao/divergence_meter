# DivergenceMeter

[![Build Status](https://travis-ci.org/sugamasao/divergence_meter.svg)](https://travis-ci.org/sugamasao/divergence_meter)

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
➜  divergence_meter git:(master) ✗ divergence_meter hoge hoge
0
➜  divergence_meter git:(master) ✗ divergence_meter hoge hog1
1
➜  divergence_meter git:(master) ✗ divergence_meter hoge fuga
3
```

did you mean?

```sh
➜  divergence_meter git:(master) ✗ divergence_meter hoge hog1 fuga
hog1
➜  divergence_meter git:(master) ✗ divergence_meter hoge hog1 fuga hoge
hoge
```

### use library

calculate Levenshtein distance.

```ruby
require 'divergence_meter'

puts DivergenceMeter.run('hoge', 'hog1') # => 1
```

did you mean?

```ruby
require 'divergence_meter'

puts DivergenceMeter.did_you_mean('hoge', %w(hog1 fuga)) # => hog1
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/divergence_meter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
