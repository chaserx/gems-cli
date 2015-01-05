gems-cli
========

[![Build Status](https://travis-ci.org/chaserx/gems-cli.svg?branch=master)](https://travis-ci.org/chaserx/gems-cli)

Using the [gems](https://github.com/rubygems/gems) gem to lookup Ruby Gems on
the command line. Copy formatted gem details for your Gemfile.

## Installation

```bash
gem install gems-cli
```

## Usage

`gems search chase` or `gems s chase`

```bash
Running search for chase...
0: gem 'purchase', '~> 1.0.15'
1: gem 'fuel_purchase', '~> 0.0.14'
2: gem 'enju_purchase_request', '~> 0.0.14'
3: gem 'chaser', '~> 0.0.3'
4: gem 'zombie-chaser', '~> 0.1.0'
5: gem 'exemplor-chaser', '~> 0.0.2'
6: gem 'rail_chaser', '~> 0.0.3'
7: gem 'rack-in-app-purchase', '~> 0.1.1'
Page: 1/1

Select from 0..9, (n)ext, (p)revious, or (q)uit #=> 0
Copied purchase to your clipboard!
```

```bash
pbpaste #=> gem 'purchase', '~> 1.0.15'
```

## TODO

- needs [Aruba](https://github.com/cucumber/aruba) tests for the CLI itself.

## Contributing

Pull requests welcome! Please see the [contribution guide](CONTRIBUTING.md).
