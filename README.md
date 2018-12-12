gems-cli
========

[![Build Status](https://travis-ci.org/chaserx/gems-cli.svg?branch=master)](https://travis-ci.org/chaserx/gems-cli)
[![Code Climate](https://codeclimate.com/github/chaserx/gems-cli/badges/gpa.svg)](https://codeclimate.com/github/chaserx/gems-cli)

Using the [gems](https://github.com/rubygems/gems) gem to lookup Ruby Gems on
the command line. Copy formatted gem details for your Gemfile.

## Installation

```bash
gem install gems-cli
```

## Usage

`gems search chase` or `gems s chase`

```bash
Running your search for chase...
0: gem 'purchase', '~> 1.0.15'
1: gem 'fuel_purchase', '~> 0.0.14'
2: gem 'enju_purchase_request', '~> 0.0.14'
3: gem 'chaser', '~> 0.0.3'
4: gem 'zombie-chaser', '~> 0.1.0'
5: gem 'exemplor-chaser', '~> 0.0.2'
6: gem 'rail_chaser', '~> 0.0.3'
Page: 1/2

Select from 0..6, (n)ext, (p)revious, (m)ore versions, or (q)uit #=> m
0: gem 'purchase', '~> 1.0.15'
    0a: gem 'purchase', '~> 1.0.14'
    0b: gem 'purchase', '~> 1.0.13'
    0c: gem 'purchase', '~> 1.0.12'
1: gem 'fuel_purchase', '~> 0.0.14'
    1a: gem 'fuel_purchase', '~> 0.0.13'
    1b: gem 'fuel_purchase', '~> 0.0.12'
    1c: gem 'fuel_purchase', '~> 0.0.11'
2: gem 'enju_purchase_request', '~> 0.0.14'
    2a: gem 'enju_purchase_request', '~> 0.1.0.pre12'
    2b: gem 'enju_purchase_request', '~> 0.1.0.pre11'
    2c: gem 'enju_purchase_request', '~> 0.1.0.pre10'
3: gem 'chaser', '~> 0.0.3'
    3a: gem 'chaser', '~> 0.0.2'
    3b: gem 'chaser', '~> 0.0.1'
4: gem 'zombie-chaser', '~> 0.1.0'
    4a: gem 'zombie-chaser', '~> 0.0.3'
    4b: gem 'zombie-chaser', '~> 0.0.2'
    4c: gem 'zombie-chaser', '~> 0.0.1'
5: gem 'exemplor-chaser', '~> 0.0.2'
6: gem 'rail_chaser', '~> 0.0.3'
    6a: gem 'rail_chaser', '~> 0.0.2'
Page: 1/2

Select from 0..9, (n)ext, (p)revious, or (q)uit #=> 0
Copied purchase to your clipboard!
```

```bash
pbpaste #=> gem 'purchase', '~> 1.0.15'
```

## TODO

- needs [Aruba](https://github.com/cucumber/aruba) or similar tests for the CLI itself.

## Contributing

Pull requests welcome! Please see the [contribution guide](CONTRIBUTING.md).

## Development

First, install development dependencies with `bundle install`.

Run tests with `bundle exec rspec`.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

## Many thanks to the following contributors

- [moneypenney](https://github.com/moneypenny)
- [jdickey](https://github.com/jdickey)
